import { LightningElement } from 'lwc';

export default class comboBox extends LightningElement {
    value = 'ComboBox Example';

    get options() {
        return [
            { label: 'Select by year', value: 'year' },
            { label: 'Select by month', value: 'month' },
            { label: 'Select by week', value: 'week' },
        ];
    }

    handleChange(event) {
        this.value = event.detail.value;
    }
}