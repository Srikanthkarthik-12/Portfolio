import json

# Sample skill data - in a real app, this might come from a database or other source
skills_data = {
    "Languages": ["C", "Python", "SQL"],
    "Web Development": ["HTML", "CSS", "JavaScript", "Node.js", "MongoDB", "Django"],
    "Others": ["MS Office suite", "Big Data Analysis", "Tableau", "MongoDB"],
    "Soft Skills": ["Effective communicator", "Team collaboration", "Time management", "Leadership"]
}

# This is a very basic example. In a real scenario, you'd use a library like Plotly
# to generate an interactive chart and save it as an HTML file or JSON data.
# For demonstration, we'll just output the data as JSON.

def generate_data():
    # In a real script, you might process skills_data to create a chart
    # For example, count skills per category or assign proficiency levels.
    output_data = {"skill_categories": len(skills_data), "total_skills": sum(len(skills) for skills in skills_data.values())}
    
    # In a more advanced example, you could generate an HTML file directly:
    # import plotly.graph_objects as go
    # fig = go.Figure(data=[go.Bar(x=list(skills_data.keys()), y=[len(s) for s in skills_data.values()])])
    # fig.write_html("../skill_chart.html") # Save to a file that can be embedded
    
    # For this simple example, just print JSON
    print(json.dumps(output_data, indent=4))

if __name__ == "__main__":
    generate_data() 