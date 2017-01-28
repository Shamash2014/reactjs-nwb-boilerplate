import React from 'react';
import { List, Datagrid, TextField } from 'admin-on-rest/lib/mui';

const PostList = (props) => (
    <List {...props}>
        <Datagrid>
        <TextField source="id" />
        <TextField source="title" />
        <TextField source="body" />
        </Datagrid>
        </List>
);

export default PostList;
