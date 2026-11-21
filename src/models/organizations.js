import db from './db.js'

const getAllOrganizations = async() => {
    const query = `
    SELECT project_id, project_name, description, email, logo_filename
    FROM public.organization_projects;
    `;

    const result = await db.query(query);

    return result.rows;

}

export {getAllOrganizations};