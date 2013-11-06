class Matriz

	attr_reader :m, :t

	def initialize(matriz)
		@m = matriz
		@t = matriz.size-1
	end

	def +(m2)
		i = j = 0
		for i in 0..@t do
			for j in 0..@t do
				m2.m[i][j] = @m[i][j] + m2.m[i][j]
			end
		end
		return m2.m
	end

	def -(m2)
		i = j = 0
		for i in 0..@t do
			for j in 0..@t do
				m2.m[i][j] = @m[i][j] - m2.m[i][j]
			end
		end
		return m2.m
	end

	def *(m2)
   	 
   	 mat = Array.new(@t+1){Array.new(@t+1)}
   	 
   	 for i in (0..@t)
   		 for j in (0..@t)
   			 mat[i][j]=0;
   		 end
    	end
   	 
    	m_resultado = Matriz.new(mat)
   	 
    	for i in 0..@t
        	for j in 0..@t
		  for k in 0..@t
                	m_resultado.m[i][j] += @m[i][k] * m2.m[k][j]
            	end
           	 
        	end
    	end
	  return m_resultado.m
	end


	def pos(a, b)
	 
	   @m[a][b]
	   
	end
	
	def to_s
	  "#{@mat}"
	end

end
