# Model View Projection

Each one of these words **Model, View and Projection**, represents one matrix 4x4 and are multiplied in that exact order to form a **MVP** Matrix.

In **OpenGL** this multiplication order is reversed because we are dealing with [column-major order](https://en.wikipedia.org/wiki/Row-_and_column-major_order) matrices).
 In **DirectX** (row-major order) we use the order M * V * P

---

**Model** matrix: defines the transform *position*, *rotation* and *scale* of the vertices of the model in the world.

**View** matrix: defines position and orientation of the "*camera*". Sometimes called *eye* matrix.

**Projection** matrix: Maps what the "camera" sees to **NDC**(Normalized Device Coordinates), taking care of *aspect ratio* and *perspective*.
