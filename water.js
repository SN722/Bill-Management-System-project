let waterChart; // Declare a variable to store the water bill chart instance

// Sample data for demonstration
const waterBillData = {
  january: { "C001": 80, "C002": 90, "C003": 85, "C004": 95, "C005": 75 },
  february: { "C001": 85, "C002": 88, "C003": 82, "C004": 92, "C005": 78 },
  march: { "C001": 88, "C002": 92, "C003": 86, "C004": 96, "C005": 80 }
};

// Object to map customer IDs to their names and water IDs
const customerInfo = {
  "C001": { name: "John Doe", waterId: "W001" },
  "C002": { name: "Alice Smith", waterId: "W002" },
  "C003": { name: "Bob Johnson", waterId: "W003" },
  "C004": { name: "Emily Davis", waterId: "W004" },
  "C005": { name: "Michael Brown", waterId: "W005" }
};

function showWaterGraph() {
    const customerId = document.getElementById('customerId').value;
    const enteredName = document.getElementById('customerName').value.trim();
    const customerData = customerInfo[customerId];
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
    const months = Object.keys(waterBillData);
    for (let i = 0; i <= months.indexOf(month); i++) {
      const month = months[i];
      labels.push(month);
      data.push(waterBillData[month][customerId]);
    }
  
    // Destroy existing water bill chart if it exists
    if (waterChart) {
      waterChart.destroy();
    }
  
    const ctx = document.getElementById('waterChart').getContext('2d');
    waterChart = new Chart(ctx, {
      type: 'bar',
      data: {
        labels: labels,
        datasets: [{
          label: `Water Bill for ${customerName} (ID: ${customerId})`,
          data: data,
          backgroundColor: 'rgba(255, 99, 192, 0.2)',
          borderColor: 'rgba(75, 192, 192, 1)',
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
  function resetWaterGraph() {
    // Destroy Water bill chart if it exists
    if (waterChart) {
      waterChart.destroy();
    }
  }