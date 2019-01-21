def check_if_user_gave_input    #Verifie si il y a un argument
  abort("mkdir: missing input") if ARGV.empty?
end

def get_folder_name   #prend le 1er argument
  return folder_name = ARGV.first
end

def create_folder(name)   #creer un nouveau fichier
  Dir.mkdir(name)
end

def perform
  create_folder(get_folder_name)
  check_if_user_gave_input
end
perform
