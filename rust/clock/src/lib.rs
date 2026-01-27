use std::fmt::Display;
use std::fmt::Formatter;
use std::fmt::Result;


#[derive(Debug)]
pub struct Clock {
    minutes: i32,
}

impl Clock {
    pub fn new(hours: i32, minutes: i32) -> Self {
        Clock::from(hours * 60 + minutes)
    }

    pub fn from(minutes: i32) -> Self {
        let minutes = minutes % (24 * 60);
        let minutes = if minutes < 0 { (24 * 60) + minutes } else { minutes };
        Clock { minutes: minutes }
    }

    pub fn hours(&self) -> i32 {
        self.minutes / 60
    }

    pub fn minutes(&self) -> i32 {
        self.minutes % 60
    }

    pub fn add_minutes(&self, minutes: i32) -> Self {
        Clock::from(self.minutes + minutes)
    }
}

impl Display for Clock {
    fn fmt(&self, f: &mut Formatter<'_>) -> Result {
        let hours = self.hours();
        let minutes = self.minutes();
        write!(f, "{hours:02}:{minutes:02}")
    }
}


impl PartialEq for Clock {
    fn eq(&self, other: &Self) -> bool {
        self.minutes == other.minutes
    }
}
