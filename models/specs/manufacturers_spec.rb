require("minitest/autorun")
require_relative("../manufacturer")

def update()
    sql = "UPDATE customers
    SET
    (
      name, funds
    ) =
    (
      $1, $2
    )
    WHERE id = $3"
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end
