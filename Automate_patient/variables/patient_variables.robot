*** Variables ***
${f_login}                  //li[1]//a[1]//button[1]
${f_register}               //li[2]//a[1]//button[1]

# Login
${username}                 //input[@id='input-username']
${password}                 //input[@id='input-password']
${forgot_password}          //span[contains(text(),'?')]
${login_button}             //body//button[1]
${goto_home}                //body//button[2]
${register}                 //body/div[@id='__nuxt']/div[@id='__layout']/section/div/div/span[1]
${remember}                 //label[@class='custom-control-label']

# Register
${r_username}               //input[@id='username']
${r_phone}                  //input[@id='phone']
${r_password}               //input[@id='password']
${r_c_password}             //input[@id='repeatPassword']
${next_button}              //div[@id='__layout']//section//div//div//div//button
${r_full_name}              //input[@id='firstName']
${r_full_surname}           //input[@id='lastName']
${r_select_day}             //body[1]/div[1]/div[1]/section[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[3]/div[1]/div[1]/select[1]
${r_select_month}           //body[1]/div[1]/div[1]/section[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[3]/div[1]/div[2]/select[1]
${r_select_year}            //body[1]/div[1]/div[1]/section[1]/div[2]/div[2]/div[2]/div[2]/div[2]/div[1]/div[3]/div[1]/div[3]/select[1]
${r_citizen}                //input[@id='citizenId']
${r_email}                  //input[@id='email']
${input_term}               //input[@id='input-term']

# Forgot Password
${forgot_user}              //input[@id='input-username']
${forgot_email}             //input[@id='input-email']
${forgot_button}            //div[@id='__layout']//section//div//form//button
${cancel_forgot}            //body/div[@id='__nuxt']/div[@id='__layout']/section/div/button[1]

${Hamberger}                //nav[@id='nav']//*[local-name()='svg']//*[name()='path' and contains(@fill,'currentCol')]
# Edit Profile
${Profile}                  //body[1]/div[1]/div[1]/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/ul[1]/li[1]/a[1]
${history}                  //body[1]/div[1]/div[1]/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/ul[1]/li[2]/a[1]
${history_pay}              //body[1]/div[1]/div[1]/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[1]/ul[1]/li[3]/a[1]
${disease}                  //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
${drug_allergy}             //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[2]/fieldset[1]/div[1]/input[1]
${food_allergy}             //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[3]/fieldset[1]/div[1]/input[1]
${alcohol}                  //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[4]/fieldset[1]/div[1]/input[1]
${smoking}                  //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[1]/div[2]/div[1]/div[5]/fieldset[1]/div[1]/input[1]

${p_name}                   //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
${p_surname}                //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[2]/fieldset[1]/div[1]/input[1]
${p_citizen}                //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[3]/fieldset[1]/div[1]/input[1]
${p_phone}                  //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[4]/fieldset[1]/div[1]/input[1]
${male}                     //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[6]/fieldset[1]/div[1]/div[1]/div[1]/label[1]
${female}                   //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[6]/fieldset[1]/div[1]/div[1]/div[2]/label[1]
${more_sex}                 //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[6]/fieldset[1]/div[1]/div[1]/div[3]/label[1]   
${address}                  //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[13]/fieldset[1]/div[1]/textarea[1]
${add_code}                 //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[14]/fieldset[1]/div[1]/div[1]/input[1]
${select_add}               //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[2]/div[2]/div[1]/div[14]/fieldset[1]/div[1]/div[1]/div[1]/div[1]/ul[1]/li[5]/a[1]
${contract_name}            //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[3]/div[2]/div[1]/div[1]/fieldset[1]/div[1]/input[1]
${contract_surname}         //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[3]/div[2]/div[1]/div[2]/fieldset[1]/div[1]/input[1]
${contract_phone}           //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[3]/div[2]/div[1]/div[3]/fieldset[1]/div[1]/input[1]
${contract_relation}        //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/div[3]/div[2]/div[1]/div[4]/fieldset[1]/div[1]/input[1]
${save_profile}             //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[1]/div[2]/form[1]/button[1]
${check_update_profile}     //body[1]/div[2]

# Meet
${appoint}                  //body[1]/div[1]/div[1]/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[2]/ul[1]/li[1]/a[1]
${list_appoint}             //body[1]/div[1]/div[1]/main[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[3]/div[2]/ul[1]/li[2]/a[1]
${select_title}             //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]
${next_select}              //div[@id='__layout']//main//div//div//div//div//div//div//button
${select_doctor}            //body/div[@id='__nuxt']/div[@id='__layout']/main/div/div/div/div/div/div/div/div[2]/div[1]
${check_select_doctor}      //body//div[@id='__layout']//div//div//div//div//div//div//div//div[3]
${next_select_d}            //body/div[@id='__nuxt']/div[@id='__layout']/main/div/div/div/div/div/div[2]/button[1]
${select_time}              //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[2]/div[1]/div[3]/div[1]/div[3]/div[1]/button[1]
${next_select_2}            //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[2]/div[1]/div[5]/div[2]/button[1]
${basic}                    //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[2]/div[1]/div[3]/div[1]/div[1]/div[1]/input[1]
${more_detail}              //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[2]/div[1]/div[3]/div[1]/div[2]/div[1]/textarea[1]
${weight}                   //input[@id='weight']
${hight}                    //input[@id='height']
${next_pay_1}               //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[2]/div[1]/div[4]/div[2]/button[1]
${next_pay}                 //body[1]/div[1]/div[1]/main[1]/div[2]/div[1]/div[2]/div[1]/div[5]/div[1]/button[1]
${confirm_2}                //form[@name='PostForm']//button
${close_pay}                //button[contains(text(),'×')]
${cancel_pay}               //button[contains(text(),'Cancel')]
${submit_pay}               //button[contains(text(),'OK')]

