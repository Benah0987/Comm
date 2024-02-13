# db/seeds.rb

# Define the questions
video_questions= [
    {
      question: "Observe your body language. Are you making eye contact? Are your gestures natural and expressive?",
      category: "Body Language and Expression",
      question_type: "video"
    },
    {
      question: "Check your facial expressions. Are they conveying the emotions of the story effectively?",
      category: "Body Language and Expression",
      question_type: "video"
    },
    {
      question: "Ensure that your physical presence complements the narrative.",
      category: "Body Language and Expression",
      question_type: "video"
    },
    {
      question: "Listen to your voice. Is it clear and audible? Pay attention to your tone and pitch.",
      category: "Voice Modulation and Tone",
      question_type: "video"
    },
    {
      question: "Check for variations in your voice to emphasize key points, convey different emotions, or maintain audience interest.",
      category: "Voice Modulation and Tone",
      question_type: "video"
    },
    {
      question: "Make sure your voice aligns with the mood and message of the story.",
      category: "Voice Modulation and Tone",
      question_type: "video"
    },
    {
      question: "Analyze the pacing of your storytelling. Is it too fast or too slow?",
      category: "Pacing and Timing",
      question_type: "video"
    },
    {
      question: "Observe how well you manage pauses and silences for dramatic effect or emphasis.",
      category: "Pacing and Timing",
      question_type: "video"
    },
    {
      question: "Ensure that the timing of key elements aligns with the overall flow of the story.",
      category: "Pacing and Timing",
      question_type: "video"
    },
    {
      question: "Consider how well you connect with the audience. Are you maintaining their interest?",
      category: "Engagement with the Audience",
      question_type: "video"
    },
    {
      question: "Check if you are making eye contact with the camera or your audience.",
      category: "Engagement with the Audience",
      question_type: "video"
    },
    {
      question: "Assess if your vocal and physical presence contributes to audience engagement.",
      category: "Engagement with the Audience",
      question_type: "video"
    },
    {
      question: "Evaluate the energy and enthusiasm you bring to the storytelling.",
      category: "Energy and Enthusiasm",
      question_type: "video"
    },
    {
      question: "Ensure that your passion for the story shines through, making it more captivating for the audience.",
      category: "Energy and Enthusiasm",
      question_type: "video"
    },
    {
      question: "Identify moments where you can infuse more energy or adjust your delivery.",
      category: "Energy and Enthusiasm",
      question_type: "video"
    },
    {
      question: "Assess how well you adapt to the narrative. Are you flexible in adjusting your tone or pacing based on the story's needs?",
      category: "Adaptability and Flexibility",
      question_type: "video"
    },
    {
      question: "Identify areas where you can enhance adaptability to better suit the mood or theme.",
      category: "Adaptability and Flexibility",
      question_type: "video"
    },
    {
      question: "Review the technical aspects of your video. Is the lighting adequate? Is the audio clear?",
      category: "Visual and Audio Quality",
      question_type: "video"
    },
    {
      question: "Check for any distractions or technical issues that might affect the overall viewing experience.",
      category: "Visual and Audio Quality",
      question_type: "video"
    },
    {
      question: "Evaluate the overall structure of your story. Does it follow a logical progression?",
      category: "Story Structure",
      question_type: "video"
    },
    {
      question: "Pay attention to how well you transition between different parts of the narrative.",
      category: "Story Structure",
      question_type: "video"
    },
    {
      question: "Note down specific areas where you feel you excelled and areas that need improvement.",
      category: "Feedback and Improvement Areas",
      question_type: "video"
    },
    {
      question: "Consider seeking feedback from others, both for validation and constructive critique.",
      category: "Feedback and Improvement Areas",
      question_type: "video"
    },
    {
      question: "Assess your comfort level on camera. Do you appear confident and at ease?",
      category: "Comfort and Confidence",
      question_type: "video"
    },
    {
      question: "Identify any moments where nervousness or discomfort may have affected your delivery.",
      category: "Comfort and Confidence",
      question_type: "video"
    },
    {
      question: "Recording and reviewing yourself can be a powerful tool for self-improvement. It allows you to identify patterns, strengths, and areas for growth. Be patient with yourself, and use each review as an opportunity to refine your skills and become a more compelling storyteller.",
      category: "Comfort and Confidence",
      question_type: "video"
    }
  ]
  # db/seeds.rb

# Define the questions for audio analysis
audio_questions = [
    {
      question: "Did your introduction capture attention effectively?",
      category: "Engagement of the Hook",
      question_type: "audio"
    },
    {
      question: "Does the hook provoke curiosity or emotion in the audience?",
      category: "Engagement of the Hook",
      question_type: "audio"
    },
    {
      question: "Is the opening relevant to the main story?",
      category: "Engagement of the Hook",
      question_type: "audio"
    },
    {
      question: "Are the setting and characters introduced clearly?",
      category: "Clarity in Getting into the Heart of the Story",
      question_type: "audio"
    },
    {
      question: "Is there a smooth transition from the hook to the main narrative?",
      category: "Clarity in Getting into the Heart of the Story",
      question_type: "audio"
    },
    {
      question: "Does the audience get a clear sense of the central theme or conflict?",
      category: "Clarity in Getting into the Heart of the Story",
      question_type: "audio"
    },
    {
      question: "Have you eliminated unnecessary details that do not contribute to the core narrative?",
      category: "Efficiency in Cutting the Fat",
      question_type: "audio"
    },
    {
      question: "Is the story concise, or are there parts that can be shortened without losing meaning?",
      category: "Efficiency in Cutting the Fat",
      question_type: "audio"
    },
    {
      question: "Are you staying focused on the main storyline without unnecessary tangents?",
      category: "Efficiency in Cutting the Fat",
      question_type: "audio"
    },
    {
      question: "Are transitions between different parts of the story smooth and logical?",
      category: "Seamless Weaving through the Thread of the Story",
      question_type: "audio"
    },
    {
      question: "Does the story flow naturally, or are there abrupt shifts in tone or theme?",
      category: "Seamless Weaving through the Thread of the Story",
      question_type: "audio"
    },
    {
      question: "Are there clear connections between different elements of the story?",
      category: "Seamless Weaving through the Thread of the Story",
      question_type: "audio"
    },
    {
      question: "Does the story have a satisfying resolution or conclusion?",
      category: "Impactful Landing of the Plane",
      question_type: "audio"
    },
    {
      question: "Are loose ends tied up, providing closure for the audience?",
      category: "Impactful Landing of the Plane",
      question_type: "audio"
    },
    {
      question: "Does the ending leave a lasting impression or deliver a key message?",
      category: "Impactful Landing of the Plane",
      question_type: "audio"
    },
    {
      question: "Have you effectively engaged the emotions of your audience?",
      category: "Emotional Engagement",
      question_type: "audio"
    },
    {
      question: "Do you incorporate descriptive language and vivid imagery to enhance emotional connection?",
      category: "Emotional Engagement",
      question_type: "audio"
    },
    {
      question: "Can you identify specific points in the story that evoke emotional responses?",
      category: "Emotional Engagement",
      question_type: "audio"
    },
    {
      question: "Does your storytelling style align with your personal preferences or the intended mood?",
      category: "Consistency with Your Style and Tone",
      question_type: "audio"
    },
    {
      question: "Is the tone of the story consistent throughout, or does it vary inappropriately?",
      category: "Consistency with Your Style and Tone",
      question_type: "audio"
    },
    {
      question: "Have you sought feedback from others, and if so, what are their responses?",
      category: "Audience Feedback",
      question_type: "audio"
    },
    {
      question: "Are there specific aspects of the story that resonate particularly well or need improvement?",
      category: "Audience Feedback",
      question_type: "audio"
    },
    {
      question: "Does the story maintain an appropriate pace, neither rushing nor dragging?",
      category: "Pacing and Timing",
      question_type: "audio"
    },
    {
      question: "Have you considered the timing of key elements for maximum impact?",
      category: "Pacing and Timing",
      question_type: "audio"
    },
    {
      question: "Have you improved in comparison to previous storytelling attempts?",
      category: "Reflect on Personal Growth",
      question_type: "audio"
    },
    {
      question: "What lessons have you learned from this storytelling experience?",
      category: "Reflect on Personal Growth",
      question_type: "audio"
    }
  ]
  
  # Seed the questions for audio analysis
  audio_questions.each do |question_attrs|
    Question.create(question_attrs)
  end
  
  
  # Seed the questions
  video_questions.each do |question_attrs|
    Question.create(question_attrs)
  end
  