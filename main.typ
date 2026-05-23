#import "format.typ": *
#import "components.typ": *

#let summary = [
  Aspiring software developer with 4 years of experience in robotics engineering, autonomous programming, and writing engineering design journals. Passionate about teaching younger students and peers about computer science and math topics through student club leadership and virtual or in-person tutoring.
]

#resume(
  name: "Isaiah Blanc",
  contact: (
    "301-642-7285",
    "isaiah.blanc0220@gmail.com",
    "linkedin.com/in/isaiah-blanc",
    "github.com/Isaiah15414",
  ),
  [
    = Education
    #list-grid(
      [=== School],
      [Eleanor Roosevelt High School • Class of 2026],
      [=== GPA],
      [4.0],
      [=== Relevant Courses],
      [AP Calculus BC, AP Computer Science Principles, AP Computer Science A],
      [=== Awards],
      [ASL Seal of Biliteracy, Excellence in ASL Award, Excellence in Computer Science Award, Certificate of Congressional Recognition: VEX Robotics],
      [=== Clubs],
      [VEX Robotics, National English Honor Society, Mu Alpha Theta Math Honor Society, Programming Club, Chess Club, Environmental Defense Club],
      [=== College of Choice],
      [University of Maryland: College Park • Class of 2030],
      [=== Major],
      [Computer Science],
    )

    = Work Experience
    #timeline-grid(
      ..timeline(
        job(
          title: [Freelance Web Designer],
          subtitle: [Self-Employed],
          start-time: [2025],
          description: [Part-Time],
          [
            - Designed a home inspection services and training academy website for Pro Spex in Wix Studio
              - Recorded and edited videos for YouTube, Instagram, and Facebook using Capcut
            - Designed a e-commerce website for Crowned With Comfort LLC in Wix Studio
          ],
        ),
      ),
      ..timeline(
        job(
          title: [Student Mentor],
          subtitle: [Howard County Library System],
          start-time: [June 2024],
          end-time: [July 2024],
          description: [Part-Time],
          [
            - Taught engineering and computer science topics to middle school students
              - Developed expertise in soldering, construction, and electrical engineering during SeaPerch courses
              - Built, programmed, and showcased a FIRST robot to develop interest in younger audiences
          ],
        ),
      ),
      ..timeline(
        job(
          title: [Camera Operator],
          subtitle: [Metropolitan Baptist Church],
          start-time: [2024],
          end-time: [2026],
          [
            - Recorded and broadcasted church services by operating cameras and managing Resi live streaming
            - Directed multimedia team and assisted in teaching younger members how to control camera and ProPresenter software
          ],
        ),
      ),
      ..timeline(last: true, job(
        title: [Coding Tutor],
        subtitle: [Eleanor Roosevelt High School],
        start-time: [2023],
        end-time: [2026],
        [
          - Taught Python, C++, and Java through online compilers, Arduino, Raspberry PIs, and VEX Robotics
          - Hosted first ERHS hackathon to help students develop teamwork and time management skills
        ],
      )),
    )

    = Skills
    #list-grid(
      [=== Coding Languages],
      [Python, C++, Java, HTML, CSS, Typst, Arduino],
      [=== Software],
      [Git, Github, VSCode, Onshape, Godot, Capcut, Google Workspace],
      [=== Extracurriculars],
      [Kuk Sool Won Martial Arts, Piano, Chess],
    )
  ],
)
