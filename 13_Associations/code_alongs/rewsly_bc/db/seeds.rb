STORIES = [
  {
    :headline => "$450 million for after school care",
    :content => <<-CONTENT
Prime Minister Kevin Rudd has announced $450 million to improve before and after hours school care in one of his last acts before the Parliament is dissolved and the government goes into caretaker mode.
In his first press conference on day one of the election campaign, Mr Rudd said that the additional money would go towards improving facilities and activities at around 500 schools
"A kids' development doesn't just begin at 9 and end at 3," Mr Rudd told reporters in Canberra. Mr Rudd said that the money would go into services like music programs, supervised sport and homework clubs.
Advertisement
He said the before and after school plan would have a "triple benefit" in providing better services for children, more flexibility for parents and boosting employment participation - in particular, for women.
Employment Participation Minister Kate Ellis said the funding would provide about 68,000 extra places for school children.
"This is a good announcement but it is a very smart investment," she said.
Last month, Fairfax Media reported a crisis in after hours school care places in parts of Sydney, where children were waiting years to gain access.
Ms Ellis said that services would tender to get access to the funding.

Read more: http://www.smh.com.au/federal-politics/federal-election-2013/government-spends-450m-on-after-hours-school-care-20130805-2r99u.html#ixzz2b4cdwG00
CONTENT
  },
  {
    :headline => "Tony Abbott in row over carbon costs at meat factory",
    :content => <<-CONTENT
Opposition Leader Tony Abbott has used a visit to a meatworks plant to outline his plan for scrapping the carbon tax, but Labor has hit back saying the Opposition Leader opposed a grant that saves the factory $1 million a year in energy costs.
In a visit to the JBS Australia meat processing plant in Queensland on Monday, Mr Abbott said he has written to the head of the Department of the Prime Minister and Cabinet to advise that if the Coalition is elected, its first priority would be to scrap the carbon tax.
CONTENT
  },
  {
    :headline => "'He wanted to end it'",
    :content => <<-CONTENT
In his drug-and alcohol-fuelled death - as in his fast life - Aussie surfer Cade Dallas is causing a stir. Michael Bachelard and Mark Whittaker report.
Andy Campbell lived the dream. In the late '90s and early 2000s, surf clothing company Billabong would fly the Tasmanian to wherever in the world the big waves were. He'd surf, party, promote his sponsor, then move on to the next wall of water. By 2002, though, he'd retired to Bali where, one typically sultry morning, he paddled out towards the thundering surf break at Uluwatu, off the holiday island's southernmost peninsula, Bukit. Approaching the break, he could barely believe what he was seeing.
"It was a big day - 10, 12 feet," Campbell recalls. "It was heavy. Gnarly. Not many people surf it [at that size]. But there was a guy out there I didn't recognise. He took off on a huge wave and surfed it to perfection. I'd surfed with the best in the world, and this guy was one of the best I'd seen ... Old-style, hard-core. Not out there doing tricks. Serious. The stuff that takes years to master."
CONTENT
  },
  {
    :headline => "Why the RBA will cut rates tomorrow",
    :content => <<-CONTENT
If the RBA cuts interest rates tomorrow - and there is little doubt of a move - it will be the first time in an election cycle that the central bank has eased monetary policy since it started publishing an official cash rate in 1990.
There have been growing calls from industry groups and analysts for an August rate cut as the economy softens amid a transition away from a waning mining investment boom towards other sectors of the economy.
The last rate cut this year was in May. The Reserve Bank said then that the 25 basis points cut was "appropriate to encourage sustainable growth in the economy" and "necessary to support demand".
So is another cut by the RBA board tomorrow necessary? Economists and financial markets are unanimously saying yes.
Advertisement
Markets are fully pricing in a 25-basis-points cut tomorrow, with a small minority of 5 per cent expecting a 50 basis points cut, overnight swaps data from Bloomberg suggest.
An easing of interest rates by 25 basis points would bring them down to a 53-year low of 2.5 per cent.
CONTENT
  }
]

STORIES.each do |story|
  Story.create(story)
end

# Seed a devise user

User.create(:email => 'admin@rews.ly', :password => 'topsecret123', :password_confirmation => 'topsecret123')
