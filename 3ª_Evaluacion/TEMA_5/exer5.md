- Name of the university
    /university/name/text()
- Country of the university
    //country/text()
- Name of the degree courses
    //degree/name/text()
- Year of the study plans of the degrees
    //degree/plan/text()
- Names of all the students
    //student/name/text()
- Identifiers of all the degrees
    //degree/@id
- Details of the degree whose id is c01
    //degree[@id="c01"]
- Centre of study of the degree whose id is c02
    //degree[@id="c02"]/centre/text()
- Name of the degrees that have a director
    //degree[director]/name
- Name of the students thats are doing a project
    //student/studies[project]/../name
- Codes of the degrees in which some students are enrolled
    //student/studies[project]/degree/@code
- Surnames and names of the students with scholarships

- Name of the subjects of the degree c04
    //subject[@degree="c04"]/name
- Name of the subjects of the second trimester
    //trimester[text()=2]/../name/text()
    //subject[trimester="2"]/name/text()
- Name of the subjects that do not have 4 theoretical credits
    //subject[theoretical_credits!="4"]/name/text()
- Code of the degrees studied by the last student
    
- Code of the subjects studied by women
- Name of the students who are enrolled in subject a02
- Codes of the degrees studied by students enrolled in any subject
- Surnames of all males
- Name of the degree that Víctor Manuel is studying
- Name of the subjects studied by Luisa
- First surname of the students enrolled in Enxeñaría do Software
- Name of the degrees studied by the students enrolled in Tecnoloxía dos alimentos
- Name of the students who are enrolled in subjects with 0 practical credits and who are studying a degree in E.T. Informática
- Name of students taking pre-2002 degrees