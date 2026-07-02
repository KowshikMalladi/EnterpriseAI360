/**
 * =============================================================================
 * Class Name : AccountRepository
 * Project    : Enterprise AI 360
 * Version    : 1.0
 *
 * Description
 * -----------------------------------------------------------------------------
 * Repository responsible for all Account database operations.
 *
 * This class centralizes SOQL queries so that AI Tools do not interact
 * directly with the database.
 * =============================================================================
 */

public with sharing class SalesforceDataService {

    /**
     * Returns all active Accounts.
     *
     * Future Enhancements:
     * - Dynamic filtering
     * - Pagination
     * - Field Security
     * - Dynamic SOQL
     */
    public static List<Account> getAccounts(){

        return [
            SELECT Id,
                   Name,
                   Industry,
                   Type,
                   Phone,
                   CreatedDate
            FROM Account
            ORDER BY CreatedDate DESC
            LIMIT 50
        ];

    }

}