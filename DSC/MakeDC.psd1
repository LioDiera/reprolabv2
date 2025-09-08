@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
            PSDscAllowPlainTextPassword = $true
        }
    )

    NonNodeData = @{

        UserData = @'
UserName,Password,GivenName,Surname,DisplayName,Dept,JobTitle,Manager
Michael.Chen,Passw0rd!,Michael,Chen,Michael Chen,Accounting,Specialist,Sarah.Williams
David.Rodriguez,Passw0rd!,David,Rodriguez,David Rodriguez,IT,Manager,Jennifer.Thompson
Emily.Johnson,Passw0rd!,Emily,Johnson,Emily Johnson,Marketing,Specialist,Kevin.Anderson
Lisa.Martinez,Passw0rd!,Lisa,Martinez,Lisa Martinez,Operations,Specialist,Amanda.Davis
Christopher.Wilson,Passw0rd!,Christopher,Wilson,Christopher Wilson,Accounting,Manager,Robert.Taylor
Jessica.Garcia,Passw0rd!,Jessica,Garcia,Jessica Garcia,IT,Specialist,David.Rodriguez
Ashley.Miller,Passw0rd!,Ashley,Miller,Ashley Miller,Marketing,Specialist,Kevin.Anderson
Amanda.Davis,Passw0rd!,Amanda,Davis,Amanda Davis,Operations,Manager,Mark.Jackson
Robert.Taylor,Passw0rd!,Robert,Taylor,Robert Taylor,Accounting,Director,
Nicole.Brown,Passw0rd!,Nicole,Brown,Nicole Brown,IT,Manager,Jennifer.Thompson
Daniel.Moore,Passw0rd!,Daniel,Moore,Daniel Moore,Marketing,Manager,Michelle.White
Mark.Jackson,Passw0rd!,Mark,Jackson,Mark Jackson,Operations,Director,
Steven.Lee,Passw0rd!,Steven,Lee,Steven Lee,Accounting,Specialist,Christopher.Wilson
Jennifer.Thompson,Passw0rd!,Jennifer,Thompson,Jennifer Thompson,IT,Director,
Michelle.White,Passw0rd!,Michelle,White,Michelle White,Marketing,Director,
Andrew.Clark,Passw0rd!,Andrew,Clark,Andrew Clark,Operations,Manager,Mark.Jackson
Sarah.Williams,Passw0rd!,Sarah,Williams,Sarah Williams,Accounting,Manager,Robert.Taylor
Brian.Lewis,Passw0rd!,Brian,Lewis,Brian Lewis,IT,Specialist,David.Rodriguez
Rachel.Walker,Passw0rd!,Rachel,Walker,Rachel Walker,Marketing,Specialist,Daniel.Moore
Thomas.Hall,Passw0rd!,Thomas,Hall,Thomas Hall,Operations,Specialist,Andrew.Clark
Matthew.Allen,Passw0rd!,Matthew,Allen,Matthew Allen,Accounting,Specialist,Christopher.Wilson
Stephanie.Young,Passw0rd!,Stephanie,Young,Stephanie Young,IT,Specialist,Nicole.Brown
Kevin.Anderson,Passw0rd!,Kevin,Anderson,Kevin Anderson,Marketing,Manager,Michelle.White
Ryan.King,Passw0rd!,Ryan,King,Ryan King,Operations,Specialist,Andrew.Clark
Lauren.Wright,Passw0rd!,Lauren,Wright,Lauren Wright,Accounting,Specialist,Sarah.Williams
'@

        RootOUs = 'Users','Computers','Groups'
        Departments = 'Accounting','IT','Marketing','Operations'
    }
}