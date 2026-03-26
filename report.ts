import os from 'node:os';
import { parseArgs } from "util";
import report from 'multiple-cucumber-html-reporter';

const { values } = parseArgs({
  args: Bun.argv,
  options: {
    testEnv: {
      type: "string",
    },
    reportName: {
      type: "string",
    },
  },
  strict: true,
  allowPositionals: true,
});

const getPlatformName = () => {
  if (process.platform === 'darwin') return 'osx';
  if (process.platform === 'win32') return 'windows';
  return 'other'; 
};

report.generate({
  jsonDir: './reports/',
  reportPath: './reports/',
  metadata: {
    device: 'Local test machine',
    browser: { name: 'firefox', version: '149.0' },
    platform: { name: getPlatformName(), version: os.release() }
  },
  customData: {
    title: `Functional Test Results - ${values.reportName}`,
    data: [
      { label: "Project Main", value: "Crown Marketplace" },
      { label: "Release Main", value: "7.6.0" },
      { label: "Project Legacy", value: "Crown Marketplace Legacy" },
      { label: "Release Legacy", value: "6.6.0" },
      { label: 'Environment', value: values.testEnv },
    ],
  },
});

