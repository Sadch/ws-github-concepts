import pytest

from run import app

@pytest.fixture
def client():
       app.config["TESTING"] = True
    with app.test_client() as client
