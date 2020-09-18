class TransactionsIndexAction
  def initialize

  end

  def call
    Http.get(url)
    # consultar uma api
    # consultar outra api
    # processamento das duas api
    # gerar retorno
    [
      {id: 123}
    ]
  end
end
