Rails.application.routes.draw do
  # Routes for the Review resource:

  # CREATE
  post("/insert_review", { :controller => "reviews", :action => "create" })
          
  # READ
  get("/reviews", { :controller => "reviews", :action => "index" })
  
  get("/reviews/:path_id", { :controller => "reviews", :action => "show" })
  
  # UPDATE
  
  post("/modify_review/:path_id", { :controller => "reviews", :action => "update" })
  
  # DELETE
  get("/delete_review/:path_id", { :controller => "reviews", :action => "destroy" })

  #------------------------------

  # Routes for the Service resource:

  # CREATE
  post("/insert_service", { :controller => "services", :action => "create" })
          
  # READ
  get("/services", { :controller => "services", :action => "index" })
  
  get("/services/:path_id", { :controller => "services", :action => "show" })
  
  # UPDATE
  
  post("/modify_service/:path_id", { :controller => "services", :action => "update" })
  
  # DELETE
  get("/delete_service/:path_id", { :controller => "services", :action => "destroy" })

  #------------------------------

  # Routes for the Need resource:

  # CREATE
  post("/insert_need", { :controller => "needs", :action => "create" })
          
  # READ
  get("/needs", { :controller => "needs", :action => "index" })
  
  get("/needs/:path_id", { :controller => "needs", :action => "show" })
  
  # UPDATE
  
  post("/modify_need/:path_id", { :controller => "needs", :action => "update" })
  
  # DELETE
  get("/delete_need/:path_id", { :controller => "needs", :action => "destroy" })

  #------------------------------

  # Routes for the Spoken language resource:

  # CREATE
  post("/insert_spoken_language", { :controller => "spoken_languages", :action => "create" })
          
  # READ
  get("/spoken_languages", { :controller => "spoken_languages", :action => "index" })
  
  get("/spoken_languages/:path_id", { :controller => "spoken_languages", :action => "show" })
  
  # UPDATE
  
  post("/modify_spoken_language/:path_id", { :controller => "spoken_languages", :action => "update" })
  
  # DELETE
  get("/delete_spoken_language/:path_id", { :controller => "spoken_languages", :action => "destroy" })

  #------------------------------

  # Routes for the Language resource:

  # CREATE
  post("/insert_language", { :controller => "languages", :action => "create" })
          
  # READ
  get("/languages", { :controller => "languages", :action => "index" })
  
  get("/languages/:path_id", { :controller => "languages", :action => "show" })
  
  # UPDATE
  
  post("/modify_language/:path_id", { :controller => "languages", :action => "update" })
  
  # DELETE
  get("/delete_language/:path_id", { :controller => "languages", :action => "destroy" })

  #------------------------------

  # Routes for the Credential resource:

  # CREATE
  post("/insert_credential", { :controller => "credentials", :action => "create" })
          
  # READ
  get("/credentials", { :controller => "credentials", :action => "index" })
  
  get("/credentials/:path_id", { :controller => "credentials", :action => "show" })
  
  # UPDATE
  
  post("/modify_credential/:path_id", { :controller => "credentials", :action => "update" })
  
  # DELETE
  get("/delete_credential/:path_id", { :controller => "credentials", :action => "destroy" })

  #------------------------------

  # Routes for the Experience resource:

  # CREATE
  post("/insert_experience", { :controller => "experiences", :action => "create" })
          
  # READ
  get("/experiences", { :controller => "experiences", :action => "index" })
  
  get("/experiences/:path_id", { :controller => "experiences", :action => "show" })
  
  # UPDATE
  
  post("/modify_experience/:path_id", { :controller => "experiences", :action => "update" })
  
  # DELETE
  get("/delete_experience/:path_id", { :controller => "experiences", :action => "destroy" })

  #------------------------------

  # Routes for the Availability resource:

  # CREATE
  post("/insert_availability", { :controller => "availabilities", :action => "create" })
          
  # READ
  get("/availabilities", { :controller => "availabilities", :action => "index" })
  
  get("/availabilities/:path_id", { :controller => "availabilities", :action => "show" })
  
  # UPDATE
  
  post("/modify_availability/:path_id", { :controller => "availabilities", :action => "update" })
  
  # DELETE
  get("/delete_availability/:path_id", { :controller => "availabilities", :action => "destroy" })

  #------------------------------

  # Routes for the Schedule resource:

  # CREATE
  post("/insert_schedule", { :controller => "schedules", :action => "create" })
          
  # READ
  get("/schedules", { :controller => "schedules", :action => "index" })
  
  get("/schedules/:path_id", { :controller => "schedules", :action => "show" })
  
  # UPDATE
  
  post("/modify_schedule/:path_id", { :controller => "schedules", :action => "update" })
  
  # DELETE
  get("/delete_schedule/:path_id", { :controller => "schedules", :action => "destroy" })

  #------------------------------

  # Routes for the Business type resource:

  # CREATE
  post("/insert_business_type", { :controller => "business_types", :action => "create" })
          
  # READ
  get("/business_types", { :controller => "business_types", :action => "index" })
  
  get("/business_types/:path_id", { :controller => "business_types", :action => "show" })
  
  # UPDATE
  
  post("/modify_business_type/:path_id", { :controller => "business_types", :action => "update" })
  
  # DELETE
  get("/delete_business_type/:path_id", { :controller => "business_types", :action => "destroy" })

  #------------------------------

  # Routes for the Provider account:

  # SIGN UP FORM
  get("/provider_sign_up", { :controller => "provider_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_provider", { :controller => "provider_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_provider_profile", { :controller => "provider_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_provider", { :controller => "provider_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_provider_account", { :controller => "provider_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/provider_sign_in", { :controller => "provider_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/provider_verify_credentials", { :controller => "provider_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/provider_sign_out", { :controller => "provider_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Homepage
  get("/", { :controller => "provider", :action => "index"})

  # -----------------------------
  
  # Provider Visible Profile

  get("/provider/:path_id", { :controller => "provider", :action => "profile" })


end
