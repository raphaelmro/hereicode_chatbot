module FaqModule
    class CreateService
        def initialize
            @company = Company.last
            @question = params['question-original']
            @answer = params['answer-original']
            @hashtags = params['hashtags-original']
        end

        def call
            return "Hashtag Obrigatória!" if hashtags == nil
            Faq.transaction do
                faq = Faq.create(question: @question, answer: @answer, company: @company)
                
            end
            
        end
    end
end