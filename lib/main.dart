import 'package:app/data/models/PortfolioModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/blocs/index_screen_bloc.dart';
import 'data/blocs/theme_bloc.dart';
import 'ui/index/index_screen.dart';
import 'ui/theme/themes.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeBloc(),
        ),
        BlocProvider(
          create: (_) => IndexScreenCubit(),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Portfolio',
            theme: AppThemes.appThemeData[AppTheme.lightTheme],
            darkTheme: AppThemes.appThemeData[AppTheme.darkTheme],
            themeMode: state.theme,
            home: IndexScreen(
              model: PortfolioModel(
                fullName: 'Konark Shivam',
                tech: 'app',
                aboutMeParagraph:
                    'I am a qualified and professional software developer with three years of experience in Native and Cross Platform app development. Team player with an eye for detail.',
                imgUrl:
                // 'https://raw.githubusercontent.com/deadman00069/sdfsf/main/1629285549713.jpeg',
               'https://media.licdn.com/dms/image/C4E03AQE2sQHmlXHPDQ/profile-displayphoto-shrink_400_400/0/1629285549713?e=1710374400&v=beta&t=63QwGAfGoY5dfapWcDuFl1uTMa8_XihtPQjD6e28v34',
                experiences: [
                  Experiences(
                    title: 'Senior Software Engineer',
                    subTitle: 'Mindfire Solutions',
                    location: 'Noida',
                    employmentType: 'Full Time',
                    startEndDate: 'Aug 2021 - Present',
                  ),
                  Experiences(
                    title: 'Flutter Developer',
                    subTitle:
                        'Graphhene Software Pvt. Ltd(formerly Densenium India Pvt Ltd)',
                    location: 'Noida',
                    employmentType: 'Full Time',
                    startEndDate: 'March 2021 - Aug 2021',
                  ),
                  Experiences(
                    title: 'Flutter Developer',
                    subTitle: 'FOXY MEDIA GROUP',
                    location: 'WFH',
                    employmentType: 'Full Time',
                    startEndDate: '2020- 2021',
                  ),
                ],
                education: [
                  Education(
                    title: 'Bachelor of Technology in  Computer Science',
                    subTitle: 'Amity University',
                    location: 'Gurgaon',
                    employmentType: 'Full Time',
                    startEndDate: 'JUL 2016 - AUG 2020',
                  ),
                ],
                contactInfo: ContactInfo(
                  phoneNo: '+91-9999146152',
                  email: 'konark@gmail.com',
                  linkdinLink:
                      'https://www.linkedin.com/in/konark-shivam-61aaa215a/',
                  githubLink: 'https://github.com/deadman00069/',
                  twitterLink: null,
                ),
                projects: [
                  Projects(
                    title: 'Family Connect',
                    description:
                        'Family Connect features a purpose-built tablet and software designed to connect and engage senior adults with family members and care providers from a distance.',
                    techStack:
                        'Flutter, Dart, Firebase, AWS, Amplify, GraphQl, Amazon Chime, LiveKit api',
                    livePreviewUrl:
                        'https://play.google.com/store/apps/details?id=com.familyconnect.memberapp',
                    githubCodeUrl: null,
                  ),
                  Projects(
                    title: 'Scheduling app for Colonoscopy',
                    description:
                        'GutChek connects patients and gastroenterologists to fill unused endoscopy suites with open-access colonoscopy. It’s the “Airbnb for endoscopy rooms”. Here users can schedule an appointment and view their visits on the app, add medicines, conditions and many other things.',
                    techStack: 'Flutter, Dart, Firebase',
                    livePreviewUrl:
                        'https://play.google.com/store/apps/details?id=com.gutcheck.android&hl=en_US',
                    githubCodeUrl: null,
                  ),
                  Projects(
                    title: 'Marketplace for Groceries and Food',
                    description:
                        'Worked on an application where users buy grocery and food items. For transactions applications use Razorpay that is included directly in the app. Users can select location or search for location and accordingly it will show shops available near to that location.',
                    techStack: 'Flutter, Dart, Firebase',
                    livePreviewUrl:
                        'https://play.google.com/store/apps/details?id=com.graphhene.quikk.customer',
                    githubCodeUrl: null,
                  ),
                  Projects(
                    title: 'A tracker app for field representatives',
                    description:
                        'Developed an application that streamlines the process of attendance and leave management for employees. The application allows employees to mark their attendance, view their attendance records, apply for leave, and check the status of their leave requests. Additionally, it includes a task management feature, which allows employees to manage and keep track of their tasks. It also includes geofencing to mark attendance.',
                    techStack: 'Flutter, Firebase',
                    livePreviewUrl: null,
                    githubCodeUrl: null,
                  ),
                  Projects(
                    title: 'Report Generating app ',
                    description:
                        'I developed an application for a client that allows users to identify defects on tanks (container carrying oil) using 2D diagrams and generate reports, which can be shared in PDF format for further analysis and maintenance purposes.',
                    techStack: 'Android, Kotlin',
                    livePreviewUrl: null,
                    githubCodeUrl: null,
                  ),
                  Projects(
                    title: 'Instagram Clone',
                    description:
                        'A reactive Single-Page Instagram-Clone with some new features!!',
                    techStack: 'Flutter',
                    livePreviewUrl: null,
                    githubCodeUrl:
                        'https://github.com/deadman00069/flutter_projects/tree/master/insta_clone_2',
                  ),
                  Projects(
                    title: 'Social Media App',
                    description:
                        'A reactive Single-Page Instagram-Clone with some new features!!',
                    techStack: 'Flutter',
                    livePreviewUrl: null,
                    githubCodeUrl:
                        'https://github.com/deadman00069/flutter_projects/tree/master/insta_clone_2',
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
