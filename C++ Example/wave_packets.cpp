/*
wave_packets.cpp
by Connor Fricke (cd.fricke23@gmail.com)
LATEST REVISION:
    8-Feb-2024: Original version

Compile options:
$ g++ wave_packets.cpp -o wave_packets.x -std=c++11

Requirements:
    Must have GNUPLOT installed and added to path environment variables.
    Must have wave_packets.plt file.

This code will automatically execute the command "gnuplot wave_packets.plt"
once the data file is created and plot the results of our superposition. It is
intended that parameters are large enough and near enough to create unique]
wave packet patters, though it will function with just about any choice of
parameters, alpha and beta.
*/
#include <cmath>
#include <fstream>
#include <iomanip>
#include <cstdlib>
using namespace std;

// struct for passing to sinusoidal functions
struct parameters
{
    double alpha;
    double beta;
};

// first state: sinusoidal function with frequency given by alpha parameter
double state1(double x, parameters* params)
{
    return sin(params->alpha * x);
}

// second state: sinusoidal function with frequency given by beta parameter
double state2(double x, parameters* params)
{
    return sin(params->beta * x);
}

// simple addition of two sinusoidal functions
double superposition(double x, parameters* params)
{
    return state1(x, params) + state2(x, params);
}

int main()
{
    // initialize params structure and assign values.
    parameters* myParams_ptr;
    myParams_ptr->alpha = 60.0;
    myParams_ptr->beta = 58.0;

    // output to .dat file for processing by GNUPLOT script file
    ofstream toFile ("wave_packets.dat");
    toFile << "# Superposition of States with A = " << myParams_ptr->alpha << ", B = " << myParams_ptr->beta << endl
           << "# x        f(x)" << endl;
    for (double x = 0.0; x < 6.0; x += 0.001)
    {
        toFile << fixed << setprecision(6) << x << "  " << superposition(x, myParams_ptr) << endl;
    }
    toFile.close();

    // from <cstdlib>, this is used to automatically call the gnuplot command to plot our results.
    system("gnuplot wave_packets.plt");
    return 0;
}
