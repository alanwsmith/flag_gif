use std::path::PathBuf;
use std::process::Command;

// TODO: Memoize all the things

struct Video {
    path: Option<PathBuf>,
}

fn main() {
    let mut v = Video { path: None };
    v.path = Some(PathBuf::from("input.gif"));
    let out_width: u32 = 420;
    let out_height: u32 = out_width / v.width() * v.height();
    let multiplier: f32 = (v.frames() as f32 / out_width as f32) as f32;

    v.make_thumbs();

    dbg!(v.frames());
    dbg!(v.width());
    dbg!(v.height());
    dbg!(out_height);
    dbg!(multiplier);
}

impl Video {
    pub fn make_thumbs(&self) {
        let args: Vec<&str> = vec![
            "-i",
            &self.path.as_ref().unwrap().as_os_str().to_str().unwrap(),
            "-vsync",
            "0",
            "-y",
            "thumbs/frame-%d.png",
        ];
        let cmd_output = Command::new("ffmpeg").args(args).output().unwrap();
        let _frame_count_string = String::from_utf8(cmd_output.stdout).unwrap();
    }
}

impl Video {
    pub fn frames(&self) -> u32 {
        let args: Vec<&str> = vec![
            "-v",
            "error",
            "-select_streams",
            "v:0",
            // note that this uses packets which should be the
            // same as frames. Using `-count_frames` would be
            // more accurate if there was a problem, but it's slower
            // and shouldn't be necessary the majority of the time.
            "-count_packets",
            "-show_entries",
            "stream=nb_read_packets",
            "-of",
            "csv=p=0",
            &self.path.as_ref().unwrap().as_os_str().to_str().unwrap(),
        ];
        let cmd_output = Command::new("ffprobe").args(args).output().unwrap();
        let frame_count_string = String::from_utf8(cmd_output.stdout).unwrap();
        let frame_count_str = frame_count_string.as_str().trim();
        frame_count_str.parse::<u32>().unwrap()
    }
}

impl Video {
    pub fn width(&self) -> u32 {
        let args: Vec<&str> = vec![
            "-v",
            "error",
            "-select_streams",
            "v:0",
            "-show_entries",
            "stream=width",
            "-of",
            "csv=p=0",
            &self.path.as_ref().unwrap().as_os_str().to_str().unwrap(),
        ];
        let cmd_output = Command::new("ffprobe").args(args).output().unwrap();
        let frame_count_string = String::from_utf8(cmd_output.stdout).unwrap();
        let frame_count_str = frame_count_string.as_str().trim();
        frame_count_str.parse::<u32>().unwrap()
    }
}

impl Video {
    pub fn height(&self) -> u32 {
        let args: Vec<&str> = vec![
            "-v",
            "error",
            "-select_streams",
            "v:0",
            "-show_entries",
            "stream=height",
            "-of",
            "csv=p=0",
            &self.path.as_ref().unwrap().as_os_str().to_str().unwrap(),
        ];
        let cmd_output = Command::new("ffprobe").args(args).output().unwrap();
        let frame_count_string = String::from_utf8(cmd_output.stdout).unwrap();
        let frame_count_str = frame_count_string.as_str().trim();
        frame_count_str.parse::<u32>().unwrap()
    }
}
