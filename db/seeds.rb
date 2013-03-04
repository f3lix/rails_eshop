# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all

Product.create(title: 'An Introduction to Parallel Programming',
	description: %{<p>Author Peter Pacheco uses a tutorial approach to show students how to develop effective parallel programs with MPI, Pthreads, and OpenMP. The first undergraduate text to directly address compiling and running parallel programs on the new multi-core and cluster architecture, An Introduction to Parallel Programming explains how to design, debug, and evaluate the performance of distributed and shared-memory programs. User-friendly exercises teach students how to compile, run and modify example programs.</p>},
	image_url: 'papro.jpg',
	price: 67.32)

Product.create(title: 'Getting Real: The smarter, faster, easier way to build a successful web application',
	description: %{<p>Getting Real details the business, design, programming, and marketing principles of 37signals. The book is packed with keep-it-simple insights, contrarian points of view, and unconventional approaches to software design. This is not a technical book or a design tutorial, it's a book of ideas. Anyone working on a web app - including entrepreneurs, designers, programmers, executives, or marketers - will find value and inspiration in this book. 37signals used the Getting Real process to launch five successful web-based applications (Basecamp, Campfire, Backpack, Writeboard, Ta-da List), and Ruby on Rails, an open-source web application framework, in just two years with no outside funding, no debt, and only 7 people (distributed across 7 time zones). Over 500,000 people around the world use these applications to get things done. Now you can find out how they did it and how you can do it too. It's not as hard as you think if you Get Real.</p>},
	image_url: 'real.jpg',
	price: 21.28)

Product.create(title: 'Rework',
	description: %{<p>Most business books give you the same old advice: Write a business plan, study the competition, seek investors, yadda yadda. If you're looking for a book like that, put this one back on the shelf.</p>

<p>Rework shows you a better, faster, easier way to succeed in business. Read it and you'll know why plans are actually harmful, why you don't need outside investors, and why you're better off ignoring the competition. The truth is, you need less than you think. You don't need to be a workaholic. You don't need to staff up. You don't need to waste time on paperwork or meetings. You don't even need an office. Those are all just excuses.</p>

<p>What you really need to do is stop talking and start working. This book shows you the way. You'll learn how to be more productive, how to get exposure without breaking the bank, and tons more counterintuitive ideas that will inspire and provoke you.</p>

<p>With its straightforward language and easy-is-better approach, Rework is the perfect playbook for anyone who's ever dreamed of doing it on their own. Hardcore entrepreneurs, small-business owners, people stuck in day jobs they hate, victims of "downsizing," and artists who don't want to starve anymore will all find valuable guidance in these pages.</p>},
	image_url: 'rework.jpg',
	price: 12.00)

Product.create(title: 'Hackers & Painters: Big Ideas from the Computer Age',
	description: %{<p>We are living in the computer age, in a world increasingly designed and engineered by computer programmers and software designers, by people who call themselves hackers. Who are these people, what motivates them, and why should you care?</p>
        <p>Consider these facts: Everything around us is turning into computers. Your typewriter is gone, replaced by a computer. Your phone has turned into a computer. So has your camera. Soon your TV will. Your car was not only designed on computers, but has more processing power in it than a room-sized mainframe did in 1970. Letters, encyclopedias, newspapers, and even your local store are being replaced by the Internet.</p>},
	image_url: 'hacker.jpg',
	price: 12.23)

Product.create(title: 'Coders at Work: Reflections on the Craft of Programming',
	description: %{<p>Peter Seibel interviews 15 of the most interesting computer programmers alive today in Coders at Work, offering a companion volume to Apress's highly acclaimed best-seller Founders at Work by Jessica Livingston. As the words "at work" suggest, Peter Seibel focuses on how his interviewees tackle the day-to-day work of programming, while revealing much more, like how they became great programmers, how they recognize programming talent in others, and what kinds of problems they find most interesting.</p>},
	image_url: 'coders.jpg',
	price: 18.20)

Product.create(title: 'CUDA by Example: An Introduction to General-Purpose GPU Programming',
	description: %{<p>CUDA is a computing architecture designed to facilitate the development of parallel programs. In conjunction with a comprehensive software platform, the CUDA Architecture enables programmers to draw on the immense power of graphics processing units (GPUs) when building high-performance applications. GPUs, of course, have long been available for demanding graphics and game applications. CUDA now brings this valuable resource to programmers working on applications in other domains, including science, engineering, and finance. No knowledge of graphics programming is required, just the ability to program in a modestly extended version of C.</p>
<p>CUDA by Example, written by two senior members of the CUDA software platform team, shows programmers how to employ this new technology. The authors introduce each area of CUDA development through working examples. After a concise introduction to the CUDA platform and architecture, as well as a quick-start guide to CUDA C, the book details the techniques and trade-offs associated with each key CUDA feature. You'll discover when to use each CUDA C extension and how to write CUDA software that delivers truly outstanding performance.</p>},
	image_url: 'cuda.jpg',
	price: 28.18)