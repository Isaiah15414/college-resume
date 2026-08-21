#import "style/format.typ": *
#import "style/components.typ": *

#let summary = [
  Aspiring software developer with hands-on experience in web design, tutoring, and robotics. Proficient in Python, C++, Java, and multiple web platforms. Demonstrated strong ability to teach technical concepts, build projects, and lead teams.
]

#resume(
  name: "Isaiah Blanc",
  contact: (
    "301-642-7285",
    "isaiah.blanc0220@gmail.com",
    "linkedin.com/in/isaiah-blanc",
    "github.com/Isaiah15414",
  ),
  color: dark-blue,
  [
    = Summary
    #summary

    = Education
    #section(
      title: [University of Maryland: College Park],
      subtitle: [Bachelor of Science in Computer Science],
      start-time: [August 2026],
      end-time: [May 2030],
      location: [College Park, MD],
      [

      ],
    )
    #section(
      title: [Eleanor Roosevelt High School],
      subtitle: [High School Diploma],
      start-time: [August 2022],
      end-time: [May 2026],
      location: [Greenbelt, MD],
      [
        - *GPA:* 4.0
        - *Relevant Coursework:* AP Calculus BC, AP Computer Science Principles, AP Computer Science A
        - *Awards:* AP Scholar Award, ASL Seal of Biliteracy, Excellence in ASL Award, Excellence in Computer Science Award, Certificate of Congressional Recognition: VEX Robotics
        - *Leadership:* VEX Robotics, National English Honor Society, Mu Alpha Theta Math Honor Society, Coding Club
      ],
    )

    = Work Experience
    #timeline-grid(
      ..timeline(
        section(
          title: [Chess Instructor],
          subtitle: [Silver Knights Chess Academy],
          start-time: [September 2026],
          location: [College Park, MD],
          [
            - Helped teach elementary school students how to play chess through engaging and interactive lessons
          ],
        ),
      ),
      ..timeline(
        section(
          title: [Freelance Web Designer],
          subtitle: [Pro Spex Inc. | Crowned with Comfort LLC],
          start-time: [2025],
          location: [Laurel, MD],
          [
            - Designed  e-commerce website, home inspection services website, and training academy website using Wix
            - Recorded and edited videos for YouTube, Instagram, and Facebook using Capcut
          ],
        ),
      ),
      ..timeline(
        section(
          title: [Student Mentor],
          subtitle: [Howard County Library System -- HiTech],
          start-time: [July 2024], // 07/22/24
          end-time: [August 2024], // 08/03/24
          location: [Columbia, MD],
          [
            - Taught engineering and computer science topics to middle school students
            - Developed expertise in soldering, construction, and electrical engineering during SeaPerch courses
            - Built, programmed, and showcased a FIRST robot to spark interest in STEM among younger audiences
          ],
        ),
      ),
      ..timeline(
        section(
          title: [Camera Operator],
          subtitle: [Metropolitan Baptist Church],
          start-time: [2024],
          end-time: [August 2026],
          location: [Largo, MD],
          [
            - Recorded and broadcasted church services by operating cameras and managing Resi live streaming
            - Directed multimedia team and assisted in teaching ProPresenter software to youth and senior members
          ],
        ),
      ),
      ..timeline(last: true, section(
        title: [Computer Science Tutor],
        subtitle: [Eleanor Roosevelt High School],
        start-time: [August 2023],
        end-time: [May 2026],
        location: [Greenbelt, MD],
        [
          - Taught Python, C++, and Java through web compilers, Arduino, and Raspberry PIs as coding club president
          - Hosted first ERHS hackathon to help students develop teamwork and time management skills
        ],
      )),
    )

    = Skills
    #list-grid(
      [=== Coding Languages],
      [Python, C++, Java, HTML, CSS, GDScript, Typst, Arduino],
      [=== Software],
      [Git, Github, VSCode, Onshape, Godot, Capcut, Google Workspace, Microsoft 365, Canva, Wix],
      [=== Extracurriculars],
      [Kuk Sool Won Martial Arts, Piano, Chess],
    )
  ],
)
