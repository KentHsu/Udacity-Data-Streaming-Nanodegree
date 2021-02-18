"""Contains functionality related to Weather"""
import logging


logger = logging.getLogger(__name__)


class Weather:
    """Defines the Weather model"""

    def __init__(self):
        """Creates the weather model"""
        self.temperature = 70.0
        self.status = "sunny"

    def process_message(self, message):
        """Handles incoming weather data"""
        weather_json = json.loads(message.value())
        try:
            self.temperature = weather_json['temperature']
            self.status = weather_json['status']
        except KeyError as e:
            logger.debug(f"Failed to unpack message {e}")
