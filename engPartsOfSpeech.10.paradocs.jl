### A Pluto.jl notebook ###
# v0.14.1

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
    Pkg.add("InteractiveUtils")
  using InteractiveUtils
    Pkg.add("PlutoUI")
  using PlutoUI
	
end

# ╔═╡ 7a6936be-8d16-11eb-0a34-c7e3704e4e77
md"""
# Hello!``~~~`` I am your ``~``🛡️ Pluto Notebook!
* Scientists use Notebooks to find new things.
* You can have fun finding and learning new things.
* Sliders and Scrubbers let you try.``~~``Don't worry.  
* You do not need to erase,``~~`` Just try again.
* Practice and you will be a Notebook Scientist!
"""

# ╔═╡ e9f3d90a-8c81-11eb-2adc-5fb66a6341e5
word1List = [" ____ " "cow" "   cat   " "dog" "rooster" "pig";
" ____ " "said oink oink" "said moo" "said meow" "said cock-a-doodle-doo" "said bow bow"];

# ╔═╡ 93322ebe-8c85-11eb-2ea7-15d8ec2977aa
md"""
!!! first
#### ``~~~~~~~~~~~~~~``Move the sliders to pick the words that go together.
##### ``~~~~~~~~~~~~~~``These are called word pairs. ``~~`` Think of some more word pairs.
noun
$(@bind word1 Slider(1:6; default=1, show_value=false)) 
verb + word pair 
$(@bind word2 Slider(1:6; default=1, show_value=false)) 
"""

# ╔═╡ 5c1cff3a-8c83-11eb-3067-4bf2500585d4
md"""
# The $(word1List[1, word1]) $(word1List[2, word2]) .
"""

# ╔═╡ 5600460c-8c92-11eb-0d30-6ffbc6077b55
posList = ["_______" "article" "noun" "pronoun" "verb" "adjective" "adverb" "preposition" "conjunction"  "exclamation"];

# ╔═╡ 017d84c4-8cac-11eb-23ad-53aeacf5028b
md"""
``\mathbf1=``
$(@bind pos1 Scrubbable(1 : 10; default=1)) ``~~~~~~~~~~\mathbf2=``
$(@bind pos2 Scrubbable(1 : 10; default=1)) ``~~~~~~~~~~\mathbf3=``
$(@bind pos3 Scrubbable(1 : 10; default=1)) ``~~~~~~~~~~\mathbf4=``
$(@bind pos4 Scrubbable(1 : 10; default=1)) ``~~~~~~~~~~\mathbf5=``
$(@bind pos5 Scrubbable(1 : 10; default=1)) ``~~~~~~~~~~\mathbf6=``
$(@bind pos6 Scrubbable(1 : 10; default=1))
!!! study
###### Left click and drag the text,``~``  or use arrow keys.``~~~``The mouse wheel zooms.
"""



# ╔═╡ b27de8d8-8c8f-11eb-280f-a7eaad09372d
md"""
!!! next       
##### ``~~~~~~~~~``Click and Drag a scrub number to  pick the part of speech.
|_____1______|_____2______|_____3______|_____4______|_____5______|_____6______|
|:----------:|:-------:|:--------:|:---------:|:---------:|:-------:|
| The   | cow | jumped  |over|the|moon.|
| $(posList[pos1])|$(posList[pos2]) |  $(posList[pos3])|$(posList[pos4])|$(posList[pos5]) |  $(posList[pos6])|
 
"""

# ╔═╡ c4a98619-8ca0-4357-ba03-24976e65762c
html"""
<div style="width:680px;height:300px;border: 1px solid black;"><div style="position:relative;z-index:10;height:40px;padding-left:4px;width:150px;"><a style="text-decoration:none;color:#CCC;font-size:20px;font-family:Dosis;" href="https://ziteboard.com" target="_blank">Zoom & Move</a></div><iframe seamless="seamless" style="position:relative;width: 100%; height: 100%;top:-40px;" src="https://view.ziteboard.com/shared/45582421871615" frameborder="0" allowfullscreen></iframe></div>
"""


# ╔═╡ Cell order:
# ╟─38db4d40-8d1b-11eb-37fc-89b3bcb5f9c6
# ╟─7a6936be-8d16-11eb-0a34-c7e3704e4e77
# ╟─e9f3d90a-8c81-11eb-2adc-5fb66a6341e5
# ╟─93322ebe-8c85-11eb-2ea7-15d8ec2977aa
# ╠═5c1cff3a-8c83-11eb-3067-4bf2500585d4
# ╟─5600460c-8c92-11eb-0d30-6ffbc6077b55
# ╟─b27de8d8-8c8f-11eb-280f-a7eaad09372d
# ╠═017d84c4-8cac-11eb-23ad-53aeacf5028b
# ╟─c4a98619-8ca0-4357-ba03-24976e65762c
