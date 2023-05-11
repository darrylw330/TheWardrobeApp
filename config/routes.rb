Rails.application.routes.draw do



  # Routes for the Outfit clothing resource:

  # CREATE
  post("/insert_outfit_clothing", { :controller => "outfit_clothings", :action => "create" })
          
  # READ
  get("/outfit_clothings", { :controller => "outfit_clothings", :action => "index" })
  
  get("/outfit_clothings/:path_id", { :controller => "outfit_clothings", :action => "show" })
  
  # UPDATE
  
  post("/modify_outfit_clothing/:path_id", { :controller => "outfit_clothings", :action => "update" })
  
  # DELETE
  get("/delete_outfit_clothing/:path_id", { :controller => "outfit_clothings", :action => "destroy" })

  #------------------------------

  # Routes for the Outfit resource:

  # CREATE
  post("/insert_outfit", { :controller => "outfits", :action => "create" })
          
  # READ
  get("/outfits", { :controller => "outfits", :action => "index" })
  
  get("/outfits/:path_id", { :controller => "outfits", :action => "show" })
  
  # UPDATE
  
  post("/modify_outfit/:path_id", { :controller => "outfits", :action => "update" })
  
  # DELETE
  get("/delete_outfit/:path_id", { :controller => "outfits", :action => "destroy" })

  #------------------------------

  # Routes for the Clothing resource:

  # CREATE
  post("/insert_clothing", { :controller => "clothings", :action => "create" })
          
  # READ
  get("/clothings", { :controller => "clothings", :action => "index" })
  
  get("/clothings/:path_id", { :controller => "clothings", :action => "show" })
  
  # UPDATE
  
  post("/modify_clothing/:path_id", { :controller => "clothings", :action => "update" })
  
  # DELETE
  get("/delete_clothing/:path_id", { :controller => "clothings", :action => "destroy" })

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

end
