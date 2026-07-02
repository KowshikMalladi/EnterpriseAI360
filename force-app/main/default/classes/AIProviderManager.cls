/**
 * =============================================================================
 * Class Name    : AIProviderManager
 * Project       : Enterprise AI 360
 * Version       : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * Reads AI Configuration from Custom Metadata and returns
 * the configured AI Provider implementation.
 *
 * This follows the Strategy Pattern.
 * =============================================================================
 */

public with sharing class AIProviderManager {

    /**
     * Returns the configured AI Provider.
     */
    public static IAIProvider getProvider(){

        AI_Configuration__mdt config =
            AI_Configuration__mdt.getInstance('DEFAULT');

        if(config == null){

            throw new AIProviderException('AI Configuration not found.');

        }

        if(!config.AI_Enabled__c){

            throw new AIProviderException('AI has been disabled.');

        }

        switch on config.AI_Provider__c{

            when 'Agentforce'{

                return new AgentforceProvider();

            }

            /*
            Future

            when 'OpenAI'{

                return new OpenAIProvider();

            }

            when 'Gemini'{

                return new GeminiProvider();

            }
            */

            when else{

                throw new AIProviderException(
                    'Unsupported AI Provider : '
                    + config.AI_Provider__c
                );

            }

        }

    }

}