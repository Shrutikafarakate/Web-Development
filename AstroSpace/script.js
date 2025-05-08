<script>
    // Function to toggle light/dark mode
    function toggleMode() {
        // Toggle the 'dark-mode' class on the body element
        document.body.classList.toggle("dark-mode");
    }

    // Function to display a random space fact
    function displayFact() {
        const facts = [
            "Jupiter has 79 known moons.",
            "Venus spins in the opposite direction to most planets.",
            "Saturn could float in water.",
            "A year on Venus is shorter than its day.",
            "Jupiter's Great Red Spot is a storm larger than Earth."
        ];

        // Generate a random index to select a fact
        const random = Math.floor(Math.random() * facts.length);

        // Display the random fact in the element with id 'fact-display'
        document.getElementById("fact-display").innerText = facts[random];
    }
</script>
