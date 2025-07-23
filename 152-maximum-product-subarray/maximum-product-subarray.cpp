class Solution {
public:
    int maxProduct(vector<int>& nums) {
        int maxi=nums[0], n= nums.size(), product=1;
        for(int i=0; i<n; i++)
        {
            product=product* nums[i];
            if(product>maxi) maxi=product;
            if(product==0) product=1;
        }
        product=1;
        for(int i=n-1; i>=0; i--)
        {
            product=product* nums[i];
            if(product>maxi) maxi=product;
            if(product==0) product=1;
        }
        return maxi;
        
    }
};