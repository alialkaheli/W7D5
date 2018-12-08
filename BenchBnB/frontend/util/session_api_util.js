
export const login = (user) => {
  return (
    $.ajax({
      method: "Post",
      url: "/api/session",
      data: {user}
    })
  );
};

export const signup = user => {
  return (
    $.ajax({
      method: "Post",
      url: "/api/user",
      data: {user}
    })
  );
};

export const logout = () => {
  return (
    $.ajax({
      method: "DELETE",
      url: "/api/session",
    })
  );
};
