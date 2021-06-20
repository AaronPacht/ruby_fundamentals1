#Introduction
puts "You decide to get some exercise and fresh air, but you want to keep track of how far from home you are."
walk=1 #Distance for walk
run=5 #Distance for run
energy=10 #Total energy
distance=0 #Total distance traveled
home=false #Is user home?
until home #Loop until user home
    puts "Energy is at #{energy}" #Tell user energy level
    puts "Do you want to walk, run, rest, or turn around?" #Ask for movement type
    walkRun=gets.chomp #Get movement type
    if walkRun=="walk" #Movement type is walk
        distance+=walk #Add walk distance to total distance
        energy+=1 #User adds 1 energy
    elsif walkRun=="run" #Movement type is run
        if energy>2 #Make sure user has enough energy
            distance+=run #Add run distance to total distance
            energy-=3 #User loses 3 energy
        else #If not enough energy
            puts "You dont have enough energy to run!" #Tell user not enough energy
        end
    elsif walkRun=="rest" #Movement type is rest
        energy+=5 #User adds 5 energy
    elsif walkRun=="turn around" #User wants to go back
        walk=-walk #Make walk negative
        run=-run #Make run negative
    else #response is not valid
        puts "Not a valid response" #Inform user response is not valid
    end
    if distance<=0 #If user is back home
        home=true #User is home and loop ends
        puts "You are home!" #Tell user they are home
    else
        puts "Distance from home is #{distance}km" #Tell user total distance
        if distance==17 || distance==34 || distance==68 || distance==136 #If distance is 17,34,68,136
            puts "You found water! You now go twice as far when walking or running!" #Tell user they go twice as far
            walk+=walk #walk distance doubles
            run+=run #run distance doubles
        elsif distance==18 && walk>1 || distance==70 && walk>1 #If distance is 18 or 70, and distance is at least 1
            puts "You tripped on a rock! You now only go half as far when you walk or run!" #Tell user they go half as far
            walk=walk/2
            run=run/2
        elsif distance==19 || distance==38 || distance==76 || distance==152 #If distance is 19,38,76,152
            puts "You get a burst of energy! Your energy goes up by 15!" #Tell user they got more energy
            energy+=15 #Add 15 energy
        elsif distance==20 && energy>15 || distance==83 && energy>15 #If distance is 20 or 83 and energy is above 15
            puts "You start to feel tired! Your energy goes down by 15!" #Tell user they lost energy
            energy-=15 #Lose 15 energy
        else
            nil
        end
    end
end