class Strings {
  static final Strings _instance = Strings._internal();

  factory Strings() {
    return _instance;
  }

  Strings._internal();

  static const aboutMe = 'About Me';
  static const workExperience = 'Work Experience';
  static const education = 'Education';
  static const home = 'Home';
  static const about = 'About';
  static const techStack = 'Tech Stack';
  static const projects = 'Projects';
  static const contact = 'Contact';
}
