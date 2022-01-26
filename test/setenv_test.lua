local testcase = require('testcase')
local setenv = require('setenv')

function testcase.setenv()
    -- test that set envvar
    local v = os.getenv('TEST_ENV')
    assert.is_nil(v)
    assert(setenv('TEST_ENV', 'new env'))
    assert.equal(os.getenv('TEST_ENV'), 'new env')

    -- test that cannot overwrite if overwrite argument is not true
    assert(setenv('TEST_ENV', 'replaced env'))
    assert.equal(os.getenv('TEST_ENV'), 'new env')

    -- test that overwrite envvar
    assert(setenv('TEST_ENV', 'replaced env', true))
    assert.equal(os.getenv('TEST_ENV'), 'replaced env')

    -- test that unset envvar if no value
    assert(setenv('TEST_ENV'))
    assert.is_nil(os.getenv('TEST_ENV'))
end

