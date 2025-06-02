function connection_exists(p1, p2) {
    if (!variable_global_exists("connections") || !ds_exists(global.connections, ds_type_list)) return false;

    var i = 0;
    while (i < ds_list_size(global.connections)) {
        var pair = global.connections[| i];

        if (!is_array(pair) || !instance_exists(pair[0]) || !instance_exists(pair[1])) {
            ds_list_delete(global.connections, i);
            continue;
        }

        if ((pair[0] == p1 && pair[1] == p2) || (pair[0] == p2 && pair[1] == p1)) {
            return true;
        }

        i++;
    }

    return false;
}