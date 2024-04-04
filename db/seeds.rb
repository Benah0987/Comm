# db/seeds.rb

# Define seed data for questions
questions_data = [
  {
    category: "Engagement of the Hook",
    questions: [
      "Did your introduction capture attention effectively?",
      "Does the hook provoke curiosity or emotion in the audience?",
      "Is the opening relevant to the main story?"
    ],
    question_type: "audio"
  },
  {
    category: "Clarity in Getting into the Heart of the Story",
    questions: [
      "Are the setting and characters introduced clearly?",
      "Is there a smooth transition from the hook to the main narrative?",
      "Does the audience get a clear sense of the central theme or conflict?"
    ],
    question_type: "audio"
  },
  # (Continue with other categories similarly...)
  {
    category: "Efficiency in Cutting the Fat",
    questions: [
      "Have you eliminated unnecessary details that do not contribute to the core narrative?",
      "Is the story concise, or are there parts that can be shortened without losing meaning?",
      "Are you staying focused on the main storyline without unnecessary tangents?"
    ],
    question_type: "audio"
  },
  {
    category: "Seamless Weaving through the Thread of the Story",
    questions: [
      "Are transitions between different parts of the story smooth and logical?",
      "Does the story flow naturally, or are there abrupt shifts in tone or theme?",
      "Are there clear connections between different elements of the story?"
    ],
    question_type: "audio"
  },
  {
    category: "Impactful Landing of the Plane",
    questions: [
      "Does the story have a satisfying resolution or conclusion?",
      "Are loose ends tied up, providing closure for the audience?",
      "Does the ending leave a lasting impression or deliver a key message?"
    ],
    question_type: "audio"
  },
  {
    category: "Emotional Engagement",
    questions: [
      "Have you effectively engaged the emotions of your audience?",
      "Do you incorporate descriptive language and vivid imagery to enhance emotional connection?",
      "Can you identify specific points in the story that evoke emotional responses?"
    ],
    question_type: "audio"
  },
  {
    category: "Consistency with Your Style and Tone",
    questions: [
      "Does your storytelling style align with your personal preferences or the intended mood?",
      "Is the tone of the story consistent throughout, or does it vary inappropriately?"
    ],
    question_type: "audio"
  },
  {
    category: "Audience Feedback",
    questions: [
      "Have you sought feedback from others, and if so, what are their responses?",
      "Are there specific aspects of the story that resonate particularly well or need improvement?"
    ],
    question_type: "audio"
  },
  {
    category: "Reflect on Personal Growth",
    questions: [
      "Have you improved in comparison to previous storytelling attempts?",
      "What lessons have you learned from this storytelling experience?",
      "Regularly assessing these elements will help you refine your storytelling skills over time. Be open to feedback, both from others and from your own observations, and use it to make continuous improvements."
    ],
    question_type: "audio"
  },
  {
    category: "Pacing and Timing",
    questions: [
      "Does the story maintain an appropriate pace, neither rushing nor dragging?",
      "Have you considered the timing of key elements for maximum impact?"
    ],
    question_type: "audio"
  },

  {
    category: "Body Language and Expression",
    questions: [
      "Observe your body language. Are you making eye contact? Are your gestures natural and expressive?",
      "Check your facial expressions. Are they conveying the emotions of the story effectively?",
      "Ensure that your physical presence complements the narrative."
    ],
    question_type: "video"
  },
  # (Continue with other video question categories similarly...)
  

  {
    category: "Voice Modulation and Tone",
    questions: [
      "Listen to your voice. Is it clear and audible? Pay attention to your tone and pitch.",
      "Check for variations in your voice to emphasize key points, convey different emotions, or maintain audience interest.",
      "Make sure your voice aligns with the mood and message of the story."
    ],
    question_type: "video"
  },
  {
    category: "Pacing and Timing",
    questions: [
      "Analyze the pacing of your storytelling. Is it too fast or too slow?",
      "Observe how well you manage pauses and silences for dramatic effect or emphasis.",
      "Ensure that the timing of key elements aligns with the overall flow of the story."
    ],
    question_type: "video"
  },
  {
    category: "Engagement with the Audience",
    questions: [
      "Consider how well you connect with the audience. Are you maintaining their interest?",
      "Check if you are making eye contact with the camera or your audience.",
      "Assess if your vocal and physical presence contributes to audience engagement."
    ],
    question_type: "video"
  },
  {
    category: "Energy and Enthusiasm",
    questions: [
      "Evaluate the energy and enthusiasm you bring to the storytelling.",
      "Ensure that your passion for the story shines through, making it more captivating for the audience.",
      "Identify moments where you can infuse more energy or adjust your delivery."
    ],
    question_type: "video"
  },
  {
    category: "Visual and Audio Quality",
    questions: [
      "Review the technical aspects of your video. Is the lighting adequate? Is the audio clear?",
      "Check for any distractions or technical issues",
      "Check for any distractions or technical issues that might affect the overall viewing experience."
    ],
    question_type: "video"
  },
  {
    category: "Story Structure",
    questions: [
      "Evaluate the overall structure of your story. Does it follow a logical progression?",
      "Pay attention to how well you transition between different parts of the narrative."
    ],
    question_type: "video"
  },
  {
    category: "Feedback and Improvement Areas",
    questions: [
      "Seek feedback from others, both for validation and constructive critique.",
      "Consider areas where you can improve your storytelling skills."
    ],
    question_type: "video"
  },
  {
    category: "Comfort and Confidence",
    questions: [
      "Assess your comfort level on camera. Do you appear confident and at ease?",
      "Identify any moments where nervousness or discomfort may have affected your delivery.",
      "Use recording and reviewing techniques to improve your comfort and confidence over time."
    ],
    question_type: "video"
  }
]

# Seed the questions into the database
questions_data.each do |data|
  data[:questions].each do |question|
    Question.create!(
      maswali: question,
      category: data[:category],
      question_type: data[:question_type]
    )
  end
end

puts "All questions have been successfully seeded!"


#



