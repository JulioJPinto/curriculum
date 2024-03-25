#import "template.typ": *

#let today = datetime.today()

#show: resume.with(
  author: (
      firstname: "Júlio", 
      lastname: "Pinto",
      email: "pinto.julioj03@gmail.com", 
      github: "JulioJPinto",
      linkedin: "JulioJPinto",
      positions: (
        "Marketing Director @ CeSIUM",
        "Co-Champion @ CoderDojo Braga",
      )
  ),
  date: today.display("[month repr:long] [day], [year]")
)

#resume_section("Education")

#work_experience_item_header(
  "University of Minho",
  "Braga, Portugal",
  "B.S. in Software Enginnering",
  "Oct. 2021 - Currently",
)

#work_experience_item_header(
  "Internetional House",
  "Braga, Portugal",
  "First Certificate Cambridge English - 181/190 (c1) ",
  "Oct. 2018 - July. 2020",
)

#resume_section("Experience")

#work_experience_item_header(
  "CeSIUM",
  "Braga, Portugal",
  "Director of the Marketing Department",
  "Nov. 2021 - Currently",
)

#resume_item[
  - *CeSIUM - Centro de Estudantes de Engenharia Informática*.
  - I started my journey in CeSIUM in 2021 has a collaborator of the Marketing Department and over the years became a member of the organization. Firstly has a co-director of the department and in the last year has director
  - As Director of Marketing, I had multiple responsibilities. From managing a team of about 15 people, to managing CeSIUM's social media.
  - Managed to develop a lot of profiency with tools like Adobe Photoshop, Adobe Illustrator, Adobe After Effects and Figma. I also worked on a couple projects in #link("https://github.com/cesium")[*CeSIUM's organization*] by either helping in the development of a design or coding in HTML, CSS/TailwindCSS or NextJS.
  - Part of my job in CeSIUM is making part of different events organization teams, such as the #link("https://seium.org/")[*Semana da Engenharia Informática (SEI)*], #link("https://https://join.di.uminho.pt//")[*Jornadas da Informática (JOIN)*] and #link("https://bugsbyte.org/")[*Hackathon Bugsbyte*]
  
]

#work_experience_item_header(
  "CoderDojo Braga",
  "Braga, Portugal",
  "Mentor & Co-Champion",
  "Mar. 2022 - Currently",
)

#resume_item[
  - *CoderDojo Braga* is an initiative started by *CeSIUM*. It teaches kids from 7 to 17 years old the basics to programming and how to develop projects.
  - I started my journey in CoderDojo Braga has a Mentor and volunteer in 2022. Joined the core team in 2022 aswell and became Co-Champion in 2023.
  - As a Co-Champion, my main responsibilites reside in guiding other mentors, helping out with logistics and public relations.
  - I also organized DojoCon Braga. A small event that had the objective of reaching more people about CoderDojo Braga, aswell as talk about how computing and programming should be inserted into education.
]

#resume_section("Projects")

#personal_project_item_header(
  [#link("https://github.com/HexaTable/LearningChain")[LearningChain]],
  "",
  "Hexatable Group",
  "Apr. 2024",
)

#resume_item[
  - With a couple of friends, developed a small prototype of *LearningChain*. A Web3 platform just like Udemy or Skillshare, where anyone can publish their own course and emit a certification using Web3 technologies such as NFTs.
  - This project was developed in the Hackathon Bugbyte '23
  - We used TypeScript, Tailwind, Prisma and Solidity
] 

#personal_project_item_header(
  [#link("https://github.com/JulioJPinto/CP-Project")[Program Design by Calculation]],
  "",
  "University of Minho",
  "Nov. 2023 - Jan. 2023",
)

#resume_item[
  - For a college project me and a couple of colleagues solved a couple of programming problems using concepts of Program Design by Calculation, such as catamorphisms, anamorphisms, functors, etc.
  - For this project we used Haskell
]



#resume_section("Skills")
#v(weak: false, 8pt)

#skill_item(
  [Prog. Languagues],
  (
    strong[Haskell],
    strong[C], 
    strong[Java], 
    strong[HTML & CSS], 
    strong[SQL], 
    strong[Python],
    "C++",
    "TypeScript",
    "JavaScript/NextJS", 
    "Go", 
  )
)



#skill_item(
  "Editing Tools",
  (
    strong[Figma], 
    strong[Adobe Illustrator],
    strong[Adobe After Effects], 
    "Adobe Photoshop",
    "Adobe Premiere",
    "OBS"
  )
)

#skill_item(
  "Languagues",
  (
    strong[Portuguese], 
    strong[English],
    "Spanish"
  )
)