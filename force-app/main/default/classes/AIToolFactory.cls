/**
 * =============================================================================
 * Class Name : AIToolFactory
 * Author     : Kowshik Malladi
 * Project    : Enterprise AI 360
 * Version    : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * Factory responsible for creating AI Tool instances.
 *
 * Responsibilities:
 * - Read tool configuration
 * - Validate tool status
 * - Return correct IAITool implementation
 *
 * Future Enhancements:
 * - Dynamic Tool Loading
 * - Platform Cache
 * - Tool Versioning
 * - Permission Validation
 * =============================================================================
 */

public with sharing class AIToolFactory {

    /**
     * Returns the correct AI Tool implementation.
     */
    public static IAITool createTool(String toolName){

        AI_Tool_Registry__mdt config =
            AIToolConfigurationService.getToolConfiguration(toolName);

        if(config == null){
            return null;
        }

        if(!config.Enabled__c){
            return null;
        }

        switch on toolName{

            when 'QUERY_ACCOUNT'{

                return new QueryAccountTool();

            }

            when else{

                return null;

            }

        }

    }

}