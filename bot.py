"""
bot.py - Main bot application
"""


class Bot:
    """Simple bot class"""

    def __init__(self, name="Bot"):
        self.name = name
        self.is_running = False

    def start(self):
        """Start the bot"""
        self.is_running = True
        print(f"✅ {self.name} started successfully!")

    def stop(self):
        """Stop the bot"""
        self.is_running = False
        print(f"⛔ {self.name} stopped!")

    def process_message(self, message):
        """Process incoming message"""
        if not self.is_running:
            return "Bot is not running"
        return f"Processing: {message}"


if __name__ == "__main__":
    bot = Bot("MyBot")
    bot.start()
    result = bot.process_message("Hello Bot!")
    print(result)
    bot.stop()
