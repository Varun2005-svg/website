import OutCall "http-outcalls/outcall";

actor {
  public query func transform(input : OutCall.TransformationInput) : async OutCall.TransformationOutput {
    OutCall.transform(input);
  };

  public shared ({ caller }) func generateScreenplay(idea : Text) : async Text {
    let prompt : Text = "You are a professional screenwriter. Given the following idea: " # idea #
    ", generate a complete screenplay in industry-standard format. Include scene headings, action lines, and dialogue.";

    await OutCall.httpPostRequest(
      "https://api.openai.com/v1/chat/completions",
      [],
      prompt,
      transform,
    );
  };

  public shared ({ caller }) func generateCharacterProfiles(idea : Text) : async Text {
    let prompt : Text = "Analyze this movie idea: " # idea #
    ". Generate a list of main characters with detailed profiles, including name, role, personality traits, backstory, and motivations.";

    await OutCall.httpPostRequest(
      "https://api.openai.com/v1/chat/completions",
      [],
      prompt,
      transform,
    );
  };

  public shared ({ caller }) func generateProductionPlan(idea : Text) : async Text {
    let prompt : Text = "Based on this movie concept: " # idea #
    ". Create a production plan including shooting schedule outline, crew requirements, location suggestions, and budget tier recommendation.";

    await OutCall.httpPostRequest(
      "https://api.openai.com/v1/chat/completions",
      [],
      prompt,
      transform,
    );
  };
};
