let electricityChart; // Declare a variable to store the electricity bill chart instance

// Sample data for demonstration
const electricityBillData = {
  january: { "C001": 100, "C002": 110, "C003": 120, "C004": 130, "C005": 140 },
  february: { "C001": 105, "C002": 115, "C003": 125, "C004": 135, "C005": 145 },
  march: { "C001": 110, "C002": 120, "C003": 130, "C004": 140, "C005": 150 }
};

// Object to map customer IDs to their names and electricity IDs
const electricityCustomerInfo = {
  "C001": { name: "John Doe", electricityId: "E001" },
  "C002": { name: "Alice Smith", electricityId: "E002" },
  "C003": { name: "Bob Johnson", electricityId: "E003" },
  "C004": { name: "Emily Davis", electricityId: "E004" },
  "C005": { name: "Michael Brown", electricityId: "E005" }
};

function showElectricityGraph() {
  const customerId = document.getElementById('customerId').value;
  const enteredName = document.getElementById('customerName').value.trim();
  const customerData = electricityCustomerInfo[customerId];
  const customerName = customerData ? customerData.name : "";
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
  const months = Object.keys(electricityBillData);
  for (let i = 0; i <= months.indexOf(month); i++) {
    const month = months[i];
    labels.push(month);
    data.push(electricityBillData[month][customerId]);
  }

  // Destroy existing electricity bill chart if it exists
  if (electricityChart) {
    electricityChart.destroy();
  }

  const ctx = document.getElementById('electricityChart').getContext('2d');
  electricityChart = new Chart(ctx, {
    type: 'bar',
    data: {
      labels: labels,
      datasets: [{
        label: `Electricity Bill for ${customerName} (ID: ${customerId})`,
        data: data,
        backgroundColor: 'rgba(255, 99, 132, 0.2)',
        borderColor: 'rgba(255, 99, 132, 1)',
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

function resetElectricityGraph() {
  // Destroy Electricity bill chart if it exists
  if (electricityChart) {
    electricityChart.destroy();
  }
}
