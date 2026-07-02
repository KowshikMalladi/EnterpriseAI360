/**
 * =============================================================================
 * Class Name : AIToolConfigurationService
 * Project    : Enterprise AI 360
 *
 * Description
 * -----------------------------------------------------------------------------
 * Reads AI Tool configuration from Custom Metadata.
 *
 * This class is the single source of truth for tool configuration.
 *
 * Future Enhancements
 * -------------------
 * - Platform Cache
 * - Tool Versioning
 * - Permission Validation
 * - Source Validation
 * =============================================================================
 */

public with sharing class AIToolConfigurationService {

    /**
     * Returns Tool Configuration
     */
    public static AI_Tool_Registry__mdt getToolConfiguration(String toolName){

        List<AI_Tool_Registry__mdt> tools = [

            SELECT DeveloperName,
                   Tool_Name__c,
                   Tool_Class__c,
                   Enabled__c,
                   Tool_Description__c,
                   Execution_Order__c,
                   Requires_Approval__c,
                   Allowed_Source__c,
                   Tool_Version__c

            FROM AI_Tool_Registry__mdt

            WHERE Tool_Name__c = :toolName

            LIMIT 1

        ];

        if(tools.isEmpty()){

            return null;

        }

        return tools[0];

    }

}