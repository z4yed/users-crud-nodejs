const res = require("express/lib/response");
const { connection } = require("../connections/connections");

const userList = (req, res) => {
  connection.query("SELECT * FROM users WHERE status='active'", (err, rows) => {
    if (!err) res.render("home", { users: rows });
    else {
      throw err;
    }
  });
};

const findUser = (req, res) => {
  let searchText = req.body.name;
  connection.query(
    "SELECT * FROM users WHERE first_name LIKE ? OR last_name LIKE ?",
    [`%${searchText}%`, `%${searchText}%`],
    (err, rows) => {
      if (!err) res.render("home", { users: rows });
      else {
        throw err;
      }
    }
  );
};

const create = (req, res) => {
  res.render("add-user");
};

const store = (req, res) => {
  let { email, phone, first_name, last_name, comment } = req.body;
  connection.query(
    "INSERT INTO users SET first_name=?, last_name=?, phone=?, email=?, comments=?",
    [first_name, last_name, phone, email, comment],
    (err, rows) => {
      if (!err) {
        res.redirect("/");
      } else {
        throw err;
      }
    }
  );
};

const edit = (req, res) => {
  connection.query(
    "SELECT * FROM users WHERE id = ?",
    [req.params.id],
    (err, rows) => {
      if (!err) res.render("edit-user", { users: rows });
    }
  );
};

const update = (req, res) => {
  const { first_name, last_name, email, phone, comments } = req.body;
  connection.query(
    "UPDATE users SET first_name = ?, last_name = ?, email = ?, phone = ?, comments = ? WHERE id = ?",
    [first_name, last_name, email, phone, comments, req.params.id],
    (err, rows) => {
      if (!err) {
        res.redirect(`/`);
      } else {
        throw err;
      }
    }
  );
};

const destroy = (req, res) => {
  connection.query(
    "UPDATE users SET status='inactive' WHERE id = ?",
    [req.params.id],
    (err, rows) => {
      if (!err) {
        res.redirect(`/`);
      } else {
        throw err;
      }
    }
  );
};

module.exports = {
  userList,
  findUser,
  create,
  store,
  edit,
  update,
  destroy,
};
