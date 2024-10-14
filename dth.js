let dthChart; // Declare a variable to store the DTH bill chart instance

// Sample data for demonstration
const dthBillData = {
  january: { "C001": 50, "C002": 55, "C003": 60, "C004": 65, "C005": 70 },
  february: { "C001": 52, "C002": 57, "C003": 62, "C004": 67, "C005": 72 },
  march: { "C001": 55, "C002": 60, "C003": 65, "C004": 70, "C005": 75 }
};

// Object to map customer IDs to their names, DTH operators, and DTH IDs
const dthCustomerInfo = {
  "C001": { name: "John Doe", dthOperator: "Airtel", dthId: "D001" },
  "C002": { name: "Alice Smith", dthOperator: "DishTV", dthId: "D002" },
  "C003": { name: "Bob Johnson", dthOperator: "Tata Sky", dthId: "D003" },
  "C004": { name: "Emily Davis", dthOperator: "Sun Direct", dthId: "D004" },
  "C005": { name: "Michael Brown", dthOperator: "Videocon D2H", dthId: "D005" }
};

function showDTHGraph() {
  const customerId = document.getElementById('customerId').value;
  const enteredName = document.getElementById('customerName').value.trim();
  const customerData = dthCustomerInfo[customerId];
  const customerName = customerData ? customerData.name : "";
  const dthId = customerData ? customerData.dthId : "";
  const month = document.getElementById('month').value;

  // Check if customer ID, customer name, and month are entered
  if (!customerId || !customerName || !month) {
    alert('Please enter Customer ID, Customer Name, and select a Month.');
    return;
  }

  // Check if the entered name matches the customer ID's name
  if (enteredName !== customerName) {
    alert('The entered name does not match with the Customer ID.');
    return;
  }

  // Initialize arrays to store labels and data for the chart
  const labels = [];
  const data = [];

  // Iterate through the months up to the selected month
  const months = Object.keys(dthBillData);
  for (let i = 0; i <= months.indexOf(month); i++) {
    const month = months[i];
    labels.push(month);
    data.push(dthBillData[month][customerId]);
  }

  // Destroy existing DTH bill chart if it exists
  if (dthChart) {
    dthChart.destroy();
  }

  const ctx = document.getElementById('dthChart').getContext('2d');
  dthChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: labels,
      datasets: [{
        label: `DTH Bill for ${customerName} (ID: ${customerId}, DTH ID: ${dthId})`,
        data: data,
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgba(54, 162, 235, 1)',
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
}

function resetDTHGraph() {
  // Destroy DTH bill chart if it exists
  if (dthChart) {
    dthChart.destroy();
  }
}
