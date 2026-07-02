/**
 * =============================================================================
 * Class Name : QueryAccountTool
 * Project    : Enterprise AI 360
 *
 * Description
 * -----------------------------------------------------------------------------
 * Executes Account search requests.
 *
 * Implements IAITool.
 * =============================================================================
 */

public with sharing class QueryAccountTool implements IAITool {

    public AIResponse execute(AIRequest request){

        AIResponse response = new AIResponse();

        List<Account> accounts =
            AccountRepository.getAccounts();

        response.success = true;
        response.message = 'Accounts fetched successfully.';
        response.toolName = 'QueryAccountTool';
        response.recordsReturned = accounts.size();
        response.data = accounts;

        return response;

    }

}