#import "format.typ": *
#import "components.typ": *

#resume(
  name: "Isaiah Blanc",
  phone: "301-642-7285",
  email: "isaiah.blanc0220@gmail.com",
  linkedin: "linkedin.com/in/isaiah-blanc",
  [
    // = Summary
    // Aspiring software developer with 4 years of experience in robotics engineering, autonomous programming, and writing engineering design journals. Passionate about teaching younger students and peers about computer science and math topics through student club leadership and virtual or in-person tutoring.

    = Education
    #list-grid(
      [=== School], [Eleanor Roosevelt High School • Class of 2026],
      [=== GPA], [4.0],
      [=== Relevant Courses], [AP Calculus BC, AP Computer Science Principles, AP Computer Science A],
      [=== Awards],
      [ASL Seal of Biliteracy, Excellence in ASL: Passion and Peer Leadership Award, Excellence in Computer Science, Certificate of Congressional Recognition: VEX Robotics],
      [=== Clubs], [VEX Robotics, Programming Club, National English Honor Society, Mu Alpha Theta Math Honor Society],
      [=== College of Choice], [University of Maryland: College Park • Class of 2030],
      [=== Major], [Computer Science],
    )

    = Experience
    #timeline-grid(
      ..timeline(
        job(
          title: [Coding Tutor],
          subtitle: [Eleanor Roosevelt High School],
          start-time: [2023],
          end-time: [2026],
          [
            - Taught basic Python, C++, and Java through online compilers, Arduino, Raspberry PIs, and VEX Robotics
            - Hosted first ERHS hackathon to help students develop teamwork and time management skills
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
      ..timeline(
        job(
          title: [Youth Peer Intern],
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
      ..timeline(last: true,
        job(
          title: [Freelance Web Designer],
          subtitle: [Self-Employed],
          start-time: [2025],
          description: [Part-Time],
          [
            - Designed a home inspection services and training academy website for Pro Spex in Wix Studio
            - Recorded and edited social media videos for YouTube, Instagram, and Facebook through Capcut
            - Designed a e-commerce website for Crowned With Comfort LLC
          ],
        ),
      )
    )


    = Skills
    #list-grid(
      [=== Coding Languages], [Python, C++, Java, HTML, CSS, Typst, Arduino],
      [=== Software], [Git, Github, VSCode, Onshape, Godot, Capcut, Google Workspace],
      [=== Extracurriculars], [Kuk Sool Won Martial Arts, Piano, Chess],
    )
  ],
)
