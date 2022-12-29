<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>ChatBot</title>
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:ital@1&family=Orbitron:wght@400;500&display=swap"
      rel="stylesheet"
    />
    <script
      src="https://kit.fontawesome.com/2a4bd4739b.js"
      crossorigin="anonymous"
    ></script>
    <script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="wrapper">
      <div class="title">Simple ChatBot Application</div>
      <div class="form">
        <div class="bot-inbox inbox">
          <div class="icon">
            <i class="fa-solid fa-user-tie"></i>
          </div>
          <div class="msg-header">
            <p>Hi, how can I help you?</p>
          </div>
        </div>
      </div>
      <div class="typing-field">
        <div class="input-data">
          <input
            id="data"
            type="text"
            placeholder="Type something..."
            required>
          <button id="send-btn">Send</button>
        </div>
      </div>
    </div>
    
    <script>
        $(document).ready(function(){
            $("#send-btn").on("click", function(){
                $value = $("#data").val();
                $msg = '<div class="user-inbox inbox"><div class="msg-header"><p>'+ $value +'</p></div></div>';
                $(".form").append($msg);
                $("#data").val('');
                
                // start ajax code
                $.ajax({
                    url: 'message.php',
                    type: 'POST',
                    data: 'text='+$value,
                    success: function(result){
                        $replay = '<div class="bot-inbox inbox"><div class="icon"><i class="fa-solid fa-user-tie"></i></div><div class="msg-header"><p>'+ result +'</p></div></div>';
                        $(".form").append($replay);
                        // when chat goes down the scroll bar automatically comes down
                        $(".form").scrollTop($(".form")[0].scrollHeight);
                    }
                });
            });
        });
    </script>
  </body>
</html>
