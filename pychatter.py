from datetime import datetime

print("JS Chatbot\n\n")
print("What is your name?")
text_input = input("YOU::")
text_input_list = text_input.split()


def do_command(fname):
  if fname=="weather":
    get_weather()
  elif fname=="time":
    get_time()
  elif fname=="calc":
    print("Calculator function appears here.")
  elif fname=="help":
    print("Help function appears here.")
  else:
    print("This shouldn't have happened!\nERROR!!!")

def det_senttype(jname):
  if jname == "question":
    return "SYSTEM:: You have asked a question.\nSYSTEM:: Configuring... Please wait.\n"
  elif jname == "exclamation":
    return "SYSTEM:: You have exclaimed.\nSYSTEM:: Configuring... Please wait.\n"
  elif jname == "normal":
    return "SYSTEM:: You have returned a normal sentence.\nSYSTEM:: Trying to figure out if it is a COMMAND...\n\n"

def get_weather():
  """
  api_key = "7f8fa08f9dd9f27d86cb40b7eb9098e6"
  owm = OWM(api_key)
  city_we = input("WEATHER:: City name\nCity Name:: ")
  city_n = city_we + ', KR'
  observation = owm.weather_at_place(city_n)
  seoul_weather = observation.get_weather()
  """
  print("WEATHER:: NOT READY YET...")


def get_time():
  now = datetime.now()
  current_time = now.strftime("%H:%M:%S")
  print("TIME:: ", current_time)


yes_list = ["y", "Y", "Yes", "yes", "yeah", "sure", "yep", "yup", "ok", "okay", "k", "Okay" "dd", "ya"]
no_list = ["n", "N", "No", "no", "nope", "not really", "Nope", "Not really", "nah", "Nah", "ss"]
command_input_list = ["weather", "time", "calc", "help"]

me_list = ['me', 'i', 'I', 'Me', "I'll", "I'd", "I've", "I'm"]
you_list = ['you', 'You', 'Chatbot', 'chatbot', 'thee', 'thy', 'tu', "you'd", "you've", "You'd", "You've", "You're", "you're", "your", "Your"]
he_list = ['he', 'his', 'He', 'His', "He's", "He've", "He'd", 'she', 'her', 'She', 'Her', "she's", "she've", "she'd", 'they', 'their', 'They', 'Their', "They're", "They've", "They'd", ]
be_list = ['am', 'are', 'is', 'was', 'were', 'be', 'been']


if (text_input_list[0] == "I" and text_input_list[1] == "am"):
  name=text_input_list[2]
  print("\n")
  print("Is your name: ", name, "?")
  name_yn = input("YOU:: ")
  n=0
  while (n<len(yes_list)):
    if (name_yn == yes_list[n]):
      print("\n")
      print("OK, gotcha. I'll call you ", name, " from now on.")
    n+=1
  n=0
  while (n<len(no_list)):
    if (name_yn == no_list[n]):
      print("\n")
      print("Then can you tell me your name?")
      name = input("YOU:: ")
      print("\n")
      print("OK, I'll call you ", name, " from now on.")
    n+=1
  
elif (len(text_input_list) == 1):
  name=text_input_list[0]
  print("\n")
  print("Is your name: ", name, "?")
  name_yn = input("YOU:: ")
  n=0
  while (n<len(yes_list)):
    if (name_yn == yes_list[n]):
      print("\n")
      print("OK, gotcha. I'll call you ", name, " from now on.")
    n+=1
  n=0
  while (n<len(no_list)):
    if (name_yn == no_list[n]):
      print("\n")
      print("Then can you tell me your name?")
      name = input("YOU:: ")
      print("\n")
      print("OK, I'll call you ", name, " from now on.")
    n+=1


weird_var = 0
while (weird_var < 1):
  print("\n______________________________________________________________________")
  print("SYSTEM:: You can ask me anything or give a command.\n")
  text_main = input("YOU:: ")
  print("\n")
  text_main_list=text_main.split()
  k=0
  l=0
  while (l<len(text_main_list)):
    if text_main.strip().endswith("?"):
      sent_type = "question"
    elif text_main.strip().endswith("!"):
      sent_type = "exclamation"
    else:
      sent_type = "normal"
    l+=1
  print(det_senttype(sent_type))

  while (k<len(command_input_list)):
    if (text_main_list[0] == command_input_list[k]):
      print("SYSTEM:: You have entered a COMMAND.\nSYSTEM:: Configuring... Please wait.")
      do_command(command_input_list[k])
      print("\nSYSTEM:: Process completed.")
    k+=1
  print("\n")

  #while (j<len(me_list))
print("END OF CODE!!!\nTHIS SHOULDN'T HAVE HAPPENED!")