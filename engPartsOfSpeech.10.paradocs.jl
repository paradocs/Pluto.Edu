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

# ╔═╡ 38db4d40-8d1b-11eb-37fc-89b3bcb5f9c6
begin
import Pkg
	Pkg.activate(mktempdir())
using InteractiveUtils 	
using PlutoUI
end	

# ╔═╡ 7a6936be-8d16-11eb-0a34-c7e3704e4e77
md"""
# Hello!``~~~`` I am your ``~``🛡️ Pluto Notebook!
* Scientists use Notebooks to find new things.
* You can have fun finding and learning new things.
* Sliders and Scrubbers let you try.``~~``Don't worry.  
* You do not need to erase,``~~`` just try again.
* Practice and you will be a Notebook Scientist!
"""

# ╔═╡ 93322ebe-8c85-11eb-2ea7-15d8ec2977aa
md"""noun
$(@bind word1 Slider(1:6; default=1, show_value=false)) 
verb + word pair 
$(@bind word2 Slider(1:6; default=1, show_value=false)) 
"""

# ╔═╡ 017d84c4-8cac-11eb-23ad-53aeacf5028b
md"""
##### ``~~~~~~~~1~~~~~~~~~~~~~~~~~~2~~~~~~~~~~~~~~~~~~~~~3~~~~~~~~~~~~~~~~~~~4~~~~~~~~~~~~~~~~~~~~5~~~~~~~~~~~~~~~~~~~~6``

______
$(@bind pos1 Scrubbable(1 : 10; default=1)) ____________
$(@bind pos2 Scrubbable(1 : 10; default=1)) _______________
$(@bind pos3 Scrubbable(1 : 10; default=1)) _____________
$(@bind pos4 Scrubbable(1 : 10; default=1)) ______________
$(@bind pos5 Scrubbable(1 : 10; default=1)) ______________
$(@bind pos6 Scrubbable(1 : 10; default=1))
!!! study
"""



# ╔═╡ e9f3d90a-8c81-11eb-2adc-5fb66a6341e5
word1List = [" ____ " "cow" "   cat   " "dog" "rooster" "pig";
" ____ " "said oink oink" "said moo" "said meow" "said cock-a-doodle-doo" "said bow bow"];

# ╔═╡ 5c1cff3a-8c83-11eb-3067-4bf2500585d4
 md"""

!!! first

#### ``~~~~~~~~~~~~~~~~~``Click and Drag -or- Click ahead or after the slicer.
#### ``~~~~~~~~~~~~~~``Move the sliders to pick the words that go together.
##### ``~~~~~~~~~~~~~~``These are called word pairs. ``~~`` Think of some more word pairs.
# The $(word1List[1, word1]) $(word1List[2, word2]) .
"""

# ╔═╡ 5600460c-8c92-11eb-0d30-6ffbc6077b55
posList = ["_______" "article" "noun" "pronoun" "verb" "adjective" "adverb" "preposition" "conjunction"  "exclamation"];

# ╔═╡ b27de8d8-8c8f-11eb-280f-a7eaad09372d
md"""

!!! next       


##### ``~~~~~~~~~~~~~~~~``Click and Drag a scrub number to select the part of speech.
|_____1_____|_____2______|______3______|______4_______|______5______|___________6|
|:----------:|:-------:|:--------:|:---------:|:---------:|:-------:|
| The    | cow | jumped  |over|the|moon.|
| $(posList[pos1])|$(posList[pos2]) |  $(posList[pos3])|$(posList[pos4])|$(posList[pos5]) |  $(posList[pos6])|

 
"""

# ╔═╡ Cell order:
# ╟─7a6936be-8d16-11eb-0a34-c7e3704e4e77
# ╟─5c1cff3a-8c83-11eb-3067-4bf2500585d4
# ╟─93322ebe-8c85-11eb-2ea7-15d8ec2977aa
# ╟─b27de8d8-8c8f-11eb-280f-a7eaad09372d
# ╟─017d84c4-8cac-11eb-23ad-53aeacf5028b
# ╟─38db4d40-8d1b-11eb-37fc-89b3bcb5f9c6
# ╟─e9f3d90a-8c81-11eb-2adc-5fb66a6341e5
# ╟─5600460c-8c92-11eb-0d30-6ffbc6077b55
