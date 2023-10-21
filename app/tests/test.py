from src.example import number_sum

def test_number_sum():
    expected = 2

    result = number_sum(1,1)

    assert expected == result

