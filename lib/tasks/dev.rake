namespace :dev do
  desc "TODO"
  task setup: :environment do
  show_spinner("Deleting DB") { %x(rails db:drop) }
   
  show_spinner("Creating DB") { %x(rails db:create) }
   
 show_spinner("Creating Migration") { %x(rails db:migrate) }
   
   %x(rails dev:add_people)
  end
  
   task add_people: :environment do
   show_spinner("Creating Participantes")do
     familiars = [
       {name: 'Thiago'},
       {name: 'Lucas'},
       {name: 'Cátia'},
       {name: 'Flávio'}
       ]
      
      familiars.each do |familiar|
        Familiar.find_or_create_by!(familiar)
      end
    end
  end
private

  def show_spinner(msg_start, msg_end = "OK")
      spinner = TTY::Spinner.new(":spinner #{msg_start}", format: :dots)
      spinner.auto_spin
      yield
      spinner.success
  end
end
