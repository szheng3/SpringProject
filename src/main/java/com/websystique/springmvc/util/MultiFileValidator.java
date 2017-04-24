package com.websystique.springmvc.util;

import com.websystique.springmvc.model.FileBucket;
import com.websystique.springmvc.model.MultiFileBucket;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

@Component
public class MultiFileValidator implements Validator {

    @Override
    public boolean supports(Class<?> clazz) {
        return MultiFileBucket.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object obj, Errors errors) {
        MultiFileBucket multiBucket = (MultiFileBucket) obj;

        int index = 0;

        for (FileBucket file : multiBucket.getFiles()) {
            if (file.getFile() != null) {
                if (file.getFile().getSize() == 0) {
                    errors.rejectValue("files[" + index + "].file", "missing.file");
                }
            }
            index++;
        }

    }
}