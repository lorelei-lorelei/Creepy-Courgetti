 <?php

set_exception_handler(function ($e) {
  display_page('error', ['message' => $e->getMessage()]);
});

//Invalid email error
function check_email($email){
if(filter_input(INPUT_GET, "email", FILTER_VALIDATE_EMAIL)==0){
  throw new Exception("Email address invalid.");
} else {
  perform_login();
 }
}

//Post title or content or title & content missing
function check_story(){
  if(empty($_POST['title']) && empty($_POST['body'])){
    throw new Exception("Uh-oh! It looks like your story is missing! Do you want to try that again?");
  } elseif (empty($_POST['title'])){
    throw new Exception("Oops! It looks like you've forgotten to give your story a title.");
  } elseif (empty($_POST['body'])){
    throw new Exception("You need a to write a story to be able to submit something!");
  } elseif(empty($_POST['category'])){
    throw new Exception("Category missing! Please try again!");
  }
}
