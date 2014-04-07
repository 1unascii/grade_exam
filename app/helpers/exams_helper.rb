module ExamsHelper

	def parse
    	n = 2

    	#convert the submission to an array
    	#answers must be formatted e.g. 1. a, 2. A, 3. b etc.
    	submission = @exam.answers.downcase.split.to_a

    	#toss out the numbers for each answer
    	b = (n - 1).step(submission.size - 1, n).map { |i| submission[i] }

    end   

    #send in the parsed submission [a, b, c, d, e, etc...].to_a
	def grade(subm)

		#total
    	score = 0
    	#block_counter
    	c = 0  

    	#the answer key  	
    	correct = ['a', 'b', 'c', 'd', 'e', 'f', 'g'].to_a

    	#for each answer
    	subm.each do |answer|

    		#if the answer matches the key increment the score
    		if answer == correct[c]
    			score += 1 
    		end
    		c += 1 
    	end

    	#concatenate total possible points to the score
    	score = score.to_s + " / 7"
    	return score

    end

end
