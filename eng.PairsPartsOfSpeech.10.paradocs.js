### A Pluto.jl notebook ###
# v0.12.21

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ 1cca1344-8c7f-11eb-2fd7-696728255c80
using InteractiveUtils  

# ╔═╡ 0073fece-8c81-11eb-2b48-151f1752f8f7
using PlutoUI;

# ╔═╡ 7a6936be-8d16-11eb-0a34-c7e3704e4e77
md"""
# Hello!``~~~`` I am your Pluto Notebook!
* Scientest use Notebooks to find new thing.
* You can have fun learning new things.
* Sliders and Scrubbers let you try.``~~``Don't worry.  
* You do not need to erase, just try again.
* Practice to be a Notebook Scientest!
"""

# ╔═╡ 38db4d40-8d1b-11eb-37fc-89b3bcb5f9c6
begin
import Pkg
	Pkg.activate(mktempdir())
end	

# ╔═╡ 0b2c6a4c-8d1d-11eb-2b3c-47972c5863c6


# ╔═╡ e9f3d90a-8c81-11eb-2adc-5fb66a6341e5
word1List = [" ____ " "cow" "   cat   " "dog" "rooster" "pig";
" ____ " "said oink oink" "said moo" "said meow" "said cock-a-doodle-doo" "said bow bow"];

# ╔═╡ 5600460c-8c92-11eb-0d30-6ffbc6077b55
posList = ["article" "noun" "pronoun" "verb" "adjective" "adverb" "preposition" "conjunction"  "exclamation"];

# ╔═╡ 93322ebe-8c85-11eb-2ea7-15d8ec2977aa
md"""noun
$(@bind word1 Slider(1:6; default=1, show_value=false)) 
paired word
$(@bind word2 Slider(1:6; default=1, show_value=false)) 
"""

# ╔═╡ 5c1cff3a-8c83-11eb-3067-4bf2500585d4
 md"""

!!! first

#### ``~~~~~~~~~~~~~~~``Move the sliders to pick the words that go together.
##### ``~~~~~~~~~~~~~~~~~~``These are called word pairs.  Think of some more word pairs.
# The $(word1List[1, word1]) $(word1List[2, word2]) .
"""

# ╔═╡ 017d84c4-8cac-11eb-23ad-53aeacf5028b
md"""
##### ``~~~~~~~~1~~~~~~~~~~~~~~~~~~2~~~~~~~~~~~~~~~~~~~~~3~~~~~~~~~~~~~~~~~~~4~~~~~~~~~~~~~~~~~~~~5~~~~~~~~~~~~~~~~~~~~6``

_____
$(@bind pos1 Scrubbable(1 : 9; default=1)) ___________
$(@bind pos2 Scrubbable(1 : 9; default=1)) _____________
$(@bind pos3 Scrubbable(1 : 9; default=1)) ____________
$(@bind pos4 Scrubbable(1 : 9; default=1)) ____________
$(@bind pos5 Scrubbable(1 : 9; default=1)) _____________
$(@bind pos6 Scrubbable(1 : 9; default=1)) 
"""



# ╔═╡ b27de8d8-8c8f-11eb-280f-a7eaad09372d
md"""

!!! next       


##### ``~~~~~~~~~~~~~~~~``Click and drag the scrubme number to select the part of speech.
|_____1_____|_____2______|______3______|______4_______|______5______|___________6|
|:----------:|:-------:|:--------:|:---------:|:---------:|:-------:|
| The    | cow | jumped  |over|the|moon.|
| $(posList[pos1])|$(posList[pos2]) |  $(posList[pos3])|$(posList[pos4])|$(posList[pos5]) |  $(posList[pos6])|

 
"""

# ╔═╡ Cell order:
# ╠═7a6936be-8d16-11eb-0a34-c7e3704e4e77
# ╠═38db4d40-8d1b-11eb-37fc-89b3bcb5f9c6
# ╠═1cca1344-8c7f-11eb-2fd7-696728255c80
# ╠═0073fece-8c81-11eb-2b48-151f1752f8f7
# ╠═0b2c6a4c-8d1d-11eb-2b3c-47972c5863c6
# ╠═e9f3d90a-8c81-11eb-2adc-5fb66a6341e5
# ╠═5600460c-8c92-11eb-0d30-6ffbc6077b55
# ╟─5c1cff3a-8c83-11eb-3067-4bf2500585d4
# ╠═93322ebe-8c85-11eb-2ea7-15d8ec2977aa
# ╠═b27de8d8-8c8f-11eb-280f-a7eaad09372d
# ╠═017d84c4-8cac-11eb-23ad-53aeacf5028b
