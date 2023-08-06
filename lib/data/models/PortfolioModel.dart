class PortfolioModel {
  PortfolioModel({
    this.fullName,
    this.tech,
    this.aboutMeParagraph,
    this.imgUrl,
    this.experiences,
    this.education,
    this.contactInfo,
    this.projects,
  });

  PortfolioModel.fromJson(dynamic json) {
    fullName = json['fullName'];
    tech = json['tech'];
    aboutMeParagraph = json['aboutMeParagraph'];
    imgUrl = json['imgUrl'];
    if (json['experiences'] != null) {
      experiences = [];
      json['experiences'].forEach((v) {
        experiences?.add(Experiences.fromJson(v));
      });
    }
    if (json['education'] != null) {
      education = [];
      json['education'].forEach((v) {
        education?.add(Education.fromJson(v));
      });
    }
    contactInfo = json['contactInfo'] != null
        ? ContactInfo.fromJson(json['contactInfo'])
        : null;
    if (json['projects'] != null) {
      projects = [];
      json['projects'].forEach((v) {
        projects?.add(Projects.fromJson(v));
      });
    }
  }

  String? fullName;
  String? tech;
  String? aboutMeParagraph;
  String? imgUrl;
  List<Experiences>? experiences;
  List<Education>? education;
  ContactInfo? contactInfo;
  List<Projects>? projects;

  PortfolioModel copyWith({
    String? fullName,
    String? tech,
    String? aboutMeParagraph,
    String? imgUrl,
    List<Experiences>? experiences,
    List<Education>? education,
    ContactInfo? contactInfo,
    List<Projects>? projects,
  }) =>
      PortfolioModel(
        fullName: fullName ?? this.fullName,
        tech: tech ?? this.tech,
        aboutMeParagraph: aboutMeParagraph ?? this.aboutMeParagraph,
        imgUrl: imgUrl ?? this.imgUrl,
        experiences: experiences ?? this.experiences,
        education: education ?? this.education,
        contactInfo: contactInfo ?? this.contactInfo,
        projects: projects ?? this.projects,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['fullName'] = fullName;
    map['tech'] = tech;
    map['aboutMeParagraph'] = aboutMeParagraph;
    map['imgUrl'] = imgUrl;
    if (experiences != null) {
      map['experiences'] = experiences?.map((v) => v.toJson()).toList();
    }
    if (education != null) {
      map['education'] = education?.map((v) => v.toJson()).toList();
    }
    if (contactInfo != null) {
      map['contactInfo'] = contactInfo?.toJson();
    }
    if (projects != null) {
      map['projects'] = projects?.map((v) => v.toJson()).toList();
    }
    return map;
  }

  void copyFrom(PortfolioModel model) {
    fullName = model.fullName;
    tech = model.tech;
    aboutMeParagraph = model.aboutMeParagraph;
    imgUrl = model.imgUrl;
    experiences = model.experiences;
    education = model.education;
    contactInfo = model.contactInfo;
    projects = model.projects;
  }
}

class Projects {
  Projects({
    this.title,
    this.description,
    this.techStack,
    this.livePreviewUrl,
    this.githubCodeUrl,
  });

  Projects.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    techStack = json['techStack'];
    livePreviewUrl = json['livePreviewUrl'];
    githubCodeUrl = json['githubCodeUrl'];
  }

  String? title;
  String? description;
  String? techStack;
  String? livePreviewUrl;
  String? githubCodeUrl;

  Projects copyWith({
    String? title,
    String? description,
    String? techStack,
    String? livePreviewUrl,
    String? githubCodeUrl,
  }) =>
      Projects(
        title: title ?? this.title,
        description: description ?? this.description,
        techStack: techStack ?? this.techStack,
        livePreviewUrl: livePreviewUrl ?? this.livePreviewUrl,
        githubCodeUrl: githubCodeUrl ?? this.githubCodeUrl,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    map['techStack'] = techStack;
    map['livePreviewUrl'] = livePreviewUrl;
    map['githubCodeUrl'] = githubCodeUrl;
    return map;
  }
}

class ContactInfo {
  ContactInfo({
    this.phoneNo,
    this.email,
    this.githubLink,
    this.linkdinLink,
    this.twitterLink,
  });

  ContactInfo.fromJson(dynamic json) {
    phoneNo = json['phoneNo'];
    email = json['email'];
    githubLink = json['githubLink'];
    linkdinLink = json['linkdinLink'];
    twitterLink = json['twitterLink'];
  }

  String? phoneNo;
  String? email;
  String? githubLink;
  String? linkdinLink;
  String? twitterLink;

  ContactInfo copyWith({
    String? phoneNo,
    String? email,
    String? githubLink,
    String? linkdinLink,
    String? twitterLink,
  }) =>
      ContactInfo(
        phoneNo: phoneNo ?? this.phoneNo,
        email: email ?? this.email,
        githubLink: githubLink ?? this.githubLink,
        linkdinLink: linkdinLink ?? this.linkdinLink,
        twitterLink: twitterLink ?? this.twitterLink,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['phoneNo'] = phoneNo;
    map['email'] = email;
    map['githubLink'] = githubLink;
    map['linkdinLink'] = linkdinLink;
    map['twitterLink'] = twitterLink;
    return map;
  }
}

class Education {
  Education({
    this.title,
    this.subTitle,
    this.location,
    this.employmentType,
    this.startEndDate,
  });

  Education.fromJson(dynamic json) {
    title = json['title'];
    subTitle = json['subTitle'];
    location = json['location'];
    employmentType = json['employmentType'];
    startEndDate = json['startEndDate'];
  }

  String? title;
  String? subTitle;
  String? location;
  String? employmentType;
  String? startEndDate;

  Education copyWith({
    String? title,
    String? subTitle,
    String? location,
    String? employmentType,
    String? startEndDate,
  }) =>
      Education(
        title: title ?? this.title,
        subTitle: subTitle ?? this.subTitle,
        location: location ?? this.location,
        employmentType: employmentType ?? this.employmentType,
        startEndDate: startEndDate ?? this.startEndDate,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subTitle'] = subTitle;
    map['location'] = location;
    map['employmentType'] = employmentType;
    map['startEndDate'] = startEndDate;
    return map;
  }
}

class Experiences {
  Experiences({
    this.title,
    this.subTitle,
    this.location,
    this.employmentType,
    this.startEndDate,
  });

  Experiences.fromJson(dynamic json) {
    title = json['title'];
    subTitle = json['subTitle'];
    location = json['location'];
    employmentType = json['employmentType'];
    startEndDate = json['startEndDate'];
  }

  String? title;
  String? subTitle;
  String? location;
  String? employmentType;
  String? startEndDate;

  Experiences copyWith({
    String? title,
    String? subTitle,
    String? location,
    String? employmentType,
    String? startEndDate,
  }) =>
      Experiences(
        title: title ?? this.title,
        subTitle: subTitle ?? this.subTitle,
        location: location ?? this.location,
        employmentType: employmentType ?? this.employmentType,
        startEndDate: startEndDate ?? this.startEndDate,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['subTitle'] = subTitle;
    map['location'] = location;
    map['employmentType'] = employmentType;
    map['startEndDate'] = startEndDate;
    return map;
  }
}
