*** Settings ***
Library             SeleniumLibrary
Library             String
Library             Dialogs

*** Variables ***
${HomePage}         automationpractice.com/index.php
${Browser}          chrome
${Sheme}            http
${TestUrl}          ${Sheme}://${HomePage}

*** Keywords ***
Open HomePage
    Open Browser    ${TestUrl}          ${Browser}


*** Test Cases ***
C001 Hacer clic en Contenedores
    Open HomePage
    Set Global Variable         @{NombreDeContenedores}     //*[@id="homefeatured"]/li[1]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[2]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[3]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[4]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[5]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[6]/div/div[2]/h5/a   //*[@id="homefeatured"]/li[7]/div/div[2]/h5/a
    :FOR    ${NombreDeContenedor}   IN      @{NombreDeContenedores}
    \   Click Element       xpath=${NombreDeContenedor}
    \   Wait Until Element Is Visible       xpath=//*[@id="bigpic"]
    \   Click Element       xpath=//*[@id="header_logo"]/a/img
    Close Browser